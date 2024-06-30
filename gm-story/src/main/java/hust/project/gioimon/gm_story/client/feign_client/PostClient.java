package hust.project.gioimon.gm_story.client.feign_client;

import hust.project.gioimon.gm_story.client.model.GetPostStoryRequest;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;

import java.util.List;

@FeignClient(value = "post-client", url = "http://localhost:10440/post")
public interface PostClient {
    @GetMapping(consumes = MediaType.APPLICATION_JSON_VALUE, value = "/v1.0/post/top-post-story")
    List<Long> topPostStory();
}
