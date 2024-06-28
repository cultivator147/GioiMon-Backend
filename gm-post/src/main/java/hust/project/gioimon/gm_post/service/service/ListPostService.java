package hust.project.gioimon.gm_post.service.service;

import hust.project.gioimon.gm_post.client.feign_client.UserClient;
import hust.project.gioimon.gm_post.service.converter.PostConverter;
import hust.project.gioimon.gm_post.service.model.dto.response.PostResponseDTO;
import hust.project.gioimon.gm_post.service.model.entity.Post;
import hust.project.gioimon.gm_post.service.model.entity.PostFavourite;
import hust.project.gioimon.gm_post.service.model.entity.Profile;
import hust.project.gioimon.gm_post.service.repository.jpa.ListPostRepository;
import hust.project.gioimon.gm_post.service.utils.Validator;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class ListPostService {
    private final ListPostRepository listPostRepository;
    private final PostFavouriteService postFavouriteService;
    private final PostCommentService postCommentService;
    private final UserClient userClient;

    public List<PostResponseDTO> getListPost(Long userId, Long friendId, int page,
                                             int slots, int sortByTop,
                                             int favouriteStatus, Long storyId, int sortBy) {
        List<Post> listPostEntity;
        if (sortByTop == 1) {
            listPostEntity = getTopFavouritePost();
        } else if (sortByTop == 2) {
            listPostEntity = getTopCommentPost();
        } else {
            Comparator<Post> comparatorSortBy = (o1, o2) -> (int) (o1.getCreateTime() - o2.getCreateTime());
            listPostEntity = listPostRepository.findAll().stream().sorted(sortBy == 2 ? comparatorSortBy : comparatorSortBy.reversed()).collect(Collectors.toList());
        }
        List<PostResponseDTO> results = new ArrayList<>();
        for (Post p : listPostEntity) {
            PostFavourite pf = postFavouriteService.get(userId, p.getId());
            PostResponseDTO postResponseDTO = PostConverter.toResponseDTO(p);
            postResponseDTO.setFavourited(pf.getFavourite());
            postResponseDTO.setFavouritePoint(pf.getFavouritePoint());
            postResponseDTO.setCommentCount(postCommentService.getCommentCount(p.getId()));
            results.add(postResponseDTO);
        }
        results = results.stream()
                .filter(p -> filterByStory(p, storyId))
                .filter(p -> filterByFriendId(userId, friendId))
                .filter(p -> filterByFavouriteStatus(p, favouriteStatus))
                .skip((long) page * slots)
                .limit(slots)
                .collect(Collectors.toList())
        ;
        results.forEach(this::setOwnerInformation);
        return results;
    }

    private boolean filterByStory(PostResponseDTO post, Long storyId) {
        if (storyId == null || storyId == 0) {
            return true;
        }
        return Objects.equals(post.getStoryId(), storyId);
    }

    private boolean filterByFriendId(long userId, long friendId) {
        if (friendId == 0) {
            return true;
        }
        return friendId == userId;
    }

    private boolean filterByFavouriteStatus(PostResponseDTO post, int status) {
        if (status == 0) {
            return true;
        }
        if (status == 1) {
            return post.getFavourited() == 1;
        }
        if (status == 2) {
            return post.getFavourited() == 0;
        }
        return true;
    }

    private void setOwnerInformation(PostResponseDTO post) {
        Profile p = userClient.getProfile(new Profile(post.getOwnerId())).getData();
        if (!Validator.validateNull(p)) {
            return;
        }
        if (Validator.validateNull(p.getAvatar())) {
            post.setOwnerAvatar(p.getAvatar());
        }
        if (Validator.validateNull(p.getNickname())) {
            post.setOwnerNickname(p.getNickname());
        }
    }

    public List<Post> getTopFavouritePost() {
        List<Post> listPostEntity = listPostRepository.findAll();
        listPostEntity = listPostEntity.stream()
                .sorted((o1, o2) -> (int) (o2.getFavouriteCount() - o1.getFavouriteCount()))
                .toList()
        ;
        return listPostEntity;
    }

    public List<Post> getTopCommentPost() {
        List<Post> listPostEntity = listPostRepository.findAll();
        listPostEntity = listPostEntity.stream()
                .sorted((o1, o2) -> (int) (postCommentService.getCommentCount(o2.getId()) - postCommentService.getCommentCount(o1.getId())))
                .toList()
        ;
        return listPostEntity;
    }

    public List<PostResponseDTO> getTopFavouritePost(Long userId, int page, int size) {
        List<Post> listPostEntity = listPostRepository.findAll();
        List<PostResponseDTO> results = new ArrayList<>();
        for (Post p : listPostEntity) {
            PostFavourite pf = postFavouriteService.get(userId, p.getId());
            PostResponseDTO postResponseDTO = PostConverter.toResponseDTO(p);
            postResponseDTO.setFavourited(pf.getFavourite());
            postResponseDTO.setFavouritePoint(pf.getFavouritePoint());
            postResponseDTO.setCommentCount(postCommentService.getCommentCount(p.getId()));
            results.add(postResponseDTO);
        }
        results = results.stream()
                .sorted((o1, o2) -> (int) (o2.getFavouriteCount() - o1.getFavouriteCount()))
                .skip((long) page * size)
                .limit(size)
                .collect(Collectors.toList())
        ;
        results.forEach(this::setOwnerInformation);
        return results;
    }
}
