package hust.project.gioimon.gm_post.service.service;

import hust.project.gioimon.gm_post.service.converter.CommentConverter;
import hust.project.gioimon.gm_post.service.model.dto.request.PostCommentDTO;
import hust.project.gioimon.gm_post.service.model.entity.Post;
import hust.project.gioimon.gm_post.service.model.entity.PostComment;
import hust.project.gioimon.gm_post.service.model.entity.PostFavCompositeKey;
import hust.project.gioimon.gm_post.service.model.entity.PostFavourite;
import hust.project.gioimon.gm_post.service.repository.jpa.PostFavRepository;
import hust.project.gioimon.gm_post.service.utils.Validator;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class PostFavouriteService {
    private final PostFavRepository postFavRepository;
    private final PostService postService;

    public synchronized Post favouritePost(Long userId, PostFavourite postFavourite) {
        Long postId = postFavourite.getPostId();
        postFavourite.setUserId(userId);
        if (postService.getPost(postId) == null) {
            throw new RuntimeException();
        }
        int point = postFavourite.getFavouritePoint();
        if (!Validator.validateFavouritePoint(point)) {
            return null;
            //TODO: Can throw application exception here
        }
        int favouriteStatus = postFavourite.getFavourite();
        if (favouriteStatus != 1) {
            postFavRepository.unFavourite(postId, userId);
        } else {
            Optional<PostFavourite> optionalPostFavourite = postFavRepository.findById(new PostFavCompositeKey(postId, userId));
            if (optionalPostFavourite.isEmpty()) {
                postFavRepository.save(postFavourite);
            } else {
                postFavRepository.favourite(postId, userId, point);
            }
        }
        postService.updateFavInteraction(postId, favCount(postId), averageFavPoint(postId));
        return postService.getPost(postId);
    }

    public PostFavourite get(Long userId, Long postId){
        return postFavRepository.findById(new PostFavCompositeKey(postId, userId)).orElse(new PostFavourite());
    }

    public double averageFavPoint(long postId) {
        return postFavRepository.getTotalPoint(postId);
    }

    public long favCount(long postId) {
        return postFavRepository.calculateFavCount(postId);
    }
}
