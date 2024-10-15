package hust.project.gioimon.gm_post.service.service;

import hust.project.gioimon.gm_post.client.feign_client.UserClient;
import hust.project.gioimon.gm_post.client.kafka.Event;
import hust.project.gioimon.gm_post.client.kafka.KafkaProducer;
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

import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class PostService {
    private final PostRepository postRepository;
    private final PostJDBCRepository postJDBCRepository;
    private final UserClient userClient;
    private final KafkaProducer kafkaProducer;

    public void createPost(String header, Long ownerId, CreatePostDTO createPostDTO){
        Post p = postRepository.save(PostConverter.toEntity(createPostDTO, ownerId));
        kafkaProducer.sendMessageToKafka("CREATE_POST-out-0", Event.builder().key(ownerId).eventCreatedAt(new Date()).type("create_new").data(p).build());
        Long coin = userClient.addCoin(header, new AddCoinReqDTO(-10L, "create post", 1)).getData();
    }
}
