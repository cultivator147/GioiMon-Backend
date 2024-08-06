package hust.project.gioimon.gm_story.client.feign_client;

import hust.project.gioimon.gm_story.client.check_permission.CheckPermissionDTO;
import hust.project.gioimon.gm_story.client.model.ResponseData;
import hust.project.gioimon.gm_story.service.model.Profile;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

@FeignClient(value = "user-client", url = "http://localhost:8801")
public interface UserClient {
    @GetMapping(consumes = MediaType.APPLICATION_JSON_VALUE, value = "/v1.0/global/check-permission")
    CheckPermissionDTO checkPermission(@RequestHeader(HttpHeaders.AUTHORIZATION) String authHeader,
                                       @RequestParam() String uri,
                                       @RequestParam() String username);
    @PostMapping(consumes = MediaType.APPLICATION_JSON_VALUE, value = "/v1.0/user/profile")
    ResponseData<Profile> getProfile(@RequestBody Profile p);
}
