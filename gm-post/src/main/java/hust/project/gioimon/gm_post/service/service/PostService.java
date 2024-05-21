package hust.project.gioimon.gm_post.service.service;

import hust.project.gioimon.gm_post.service.cache.ListPostCache;
import hust.project.gioimon.gm_post.service.converter.PostConverter;
import hust.project.gioimon.gm_post.service.model.dto.request.CreatePostDTO;
import hust.project.gioimon.gm_post.service.model.dto.request.GetDetailPostDTO;
import hust.project.gioimon.gm_post.service.model.entity.Post;
import hust.project.gioimon.gm_post.service.repository.jpa.PostRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class PostService {
    private final PostRepository postRepository;
    public void createPost(Long ownerId, CreatePostDTO createPostDTO){
        Post p = postRepository.save(PostConverter.toEntity(createPostDTO, ownerId));
        ListPostCache.getInstance().updatePost(p);
    }
    public Post getPost(GetDetailPostDTO body) {
        Optional<Post> postOpt =  postRepository.findById(body.getPostId());
        return postOpt.orElse(null);
    }
    public void updateFavInteraction(long postId, long favCount, double favAvgPoint){
        postRepository.updatePostInteraction(postId,favAvgPoint, favCount);
        Post p = ListPostCache.getInstance().loadPost(postId);
        p.setFavouriteCount(favCount);
        p.setAverageFavouritePoint(favAvgPoint);
        ListPostCache.getInstance().updatePost(p);
    }
    public Post getPost(Long postId) {
        Optional<Post> postOpt =  postRepository.findById(postId);
        return postOpt.orElse(null);
    }
}
