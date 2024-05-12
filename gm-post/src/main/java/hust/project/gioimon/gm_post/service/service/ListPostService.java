package hust.project.gioimon.gm_post.service.service;

import hust.project.gioimon.gm_post.client.feign_client.UserClient;
import hust.project.gioimon.gm_post.service.converter.PostConverter;
import hust.project.gioimon.gm_post.service.model.dto.response.PostResponseDTO;
import hust.project.gioimon.gm_post.service.model.entity.Post;
import hust.project.gioimon.gm_post.service.model.entity.PostComment;
import hust.project.gioimon.gm_post.service.model.entity.PostFavourite;
import hust.project.gioimon.gm_post.service.model.entity.Profile;
import hust.project.gioimon.gm_post.service.repository.jpa.ListPostRepository;
import hust.project.gioimon.gm_post.service.utils.Validator;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class ListPostService {
    private final ListPostRepository listPostRepository;
    private final PostFavouriteService postFavouriteService;
    private final PostCommentService postCommentService;
    private final UserClient userClient;
    public List<PostResponseDTO> getListPost(Long userId,Long friendId, int page, int slots){
        Pageable pageable = PageRequest.of(page, slots, Sort.by(Sort.Direction.DESC, "createTime"));
        List<Post> listPostEntity;
        if(friendId.equals(userId)){
            listPostEntity = listPostRepository
                    .findAll(pageable)
                    .stream()
                    .toList();
        }else{
            listPostEntity = listPostRepository
                    .findAll(pageable)
                    .stream()
                    .filter(p -> p.getOwnerId().equals(friendId))
                    .toList();
        }
        List<PostResponseDTO> results = new ArrayList<>();
        for(Post p : listPostEntity){
            PostFavourite pf = postFavouriteService.get(userId, p.getId());
            PostResponseDTO postResponseDTO = PostConverter.toResponseDTO(p);
            postResponseDTO.setFavourited(pf.getFavourite());
            postResponseDTO.setFavouritePoint(pf.getFavouritePoint());
            postResponseDTO.setCommentCount(postCommentService.getCommentCount(p.getId()));
            results.add(postResponseDTO);
        }
        results.forEach(this::setOwnerInformation);
        return results;
    }
    private void setOwnerInformation(PostResponseDTO post){
        Profile p = userClient.getProfile(new Profile(post.getOwnerId())).getData();
        if(!Validator.validateNull(p)){
            return;
        }
        if(Validator.validateNull(p.getAvatar())){
            post.setOwnerAvatar(p.getAvatar());
        }
        if(Validator.validateNull(p.getNickname())){
            post.setOwnerNickname(p.getNickname());
        }
    }
}
