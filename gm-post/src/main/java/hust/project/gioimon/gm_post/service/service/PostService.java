package hust.project.gioimon.gm_post.service.service;

import hust.project.gioimon.gm_post.client.feign_client.UserClient;
import hust.project.gioimon.gm_post.client.model.GetPostStoryRequest;
import hust.project.gioimon.gm_post.client.model.TopPostStoryResponse;
import hust.project.gioimon.gm_post.service.cache.ListPostCache;
import hust.project.gioimon.gm_post.service.converter.PostConverter;
import hust.project.gioimon.gm_post.service.model.dto.request.AddCoinReqDTO;
import hust.project.gioimon.gm_post.service.model.dto.request.CreatePostDTO;
import hust.project.gioimon.gm_post.service.model.dto.request.GetDetailPostDTO;
import hust.project.gioimon.gm_post.service.model.entity.Post;
import hust.project.gioimon.gm_post.service.repository.jdbc.PostJDBCRepository;
import hust.project.gioimon.gm_post.service.repository.jpa.PostRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class PostService {
    private final PostRepository postRepository;
    private final PostJDBCRepository postJDBCRepository;
    private final UserClient userClient;

    public void createPost(String header, Long ownerId, CreatePostDTO createPostDTO){
        Post p = postRepository.save(PostConverter.toEntity(createPostDTO, ownerId));
        Long coin = userClient.addCoin(header, new AddCoinReqDTO(-10L, "create post", 1)).getData();
    }
    public Post getPost(GetDetailPostDTO body) {
        Optional<Post> postOpt =  postRepository.findById(body.getPostId());
        return postOpt.orElse(null);
    }

    public List<Long> topPostStory() {
        return postJDBCRepository.getTopStoryByPost();
    }
    public void updateFavInteraction(long postId, long favCount, double favAvgPoint){
        postRepository.updatePostInteraction(postId,favAvgPoint, favCount);
    }
    public Post getPost(Long postId) {
        Optional<Post> postOpt =  postRepository.findById(postId);
        return postOpt.orElse(null);
    }
}
