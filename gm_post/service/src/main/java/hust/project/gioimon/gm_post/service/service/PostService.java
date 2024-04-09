package hust.project.gioimon.gm_post.service.service;

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
    public void createPost(CreatePostDTO createPostDTO, Long ownerId){
        postRepository.save(PostConverter.toEntity(createPostDTO, ownerId));
    }
    public Post getPost(GetDetailPostDTO body) {
        Optional<Post> postOpt =  postRepository.findById(body.getPostId());
        return postOpt.orElse(null);
    }
    public void updateFavInteraction(long postId, long favCount, double favAvgPoint){
        postRepository.updatePostInteraction(postId,favAvgPoint, favCount);
    }
    public Post getPost(Long postId) {
        Optional<Post> postOpt =  postRepository.findById(postId);
        return postOpt.orElse(null);
    }
}
