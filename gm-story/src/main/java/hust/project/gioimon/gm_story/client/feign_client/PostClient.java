package hust.project.gioimon.gm_story.client.feign_client;

import hust.project.gioimon.gm_story.client.check_permission.CheckPermissionDTO;
import hust.project.gioimon.gm_story.client.model.GetPostStoryRequest;
import hust.project.gioimon.gm_story.client.model.TopPostStoryResponse;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@FeignClient(value = "post-client", url = "http://localhost:8802")
public interface PostClient {
    @GetMapping(consumes = MediaType.APPLICATION_JSON_VALUE, value = "/v1.0/post/top-post-story")
    List<Long> topPostStory(@RequestBody GetPostStoryRequest body);
}
