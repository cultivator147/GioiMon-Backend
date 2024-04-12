package hust.project.gioimon.gm_post.client.feign_client;

import hust.project.gioimon.gm_post.client.check_permission.CheckPermissionResponseDTO;
import hust.project.gioimon.gm_post.client.model.ResponseData;
import hust.project.gioimon.gm_post.service.model.entity.Profile;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

@FeignClient(value = "user-client", url = "http://localhost:8801")
public interface UserClient {
    @GetMapping(consumes = MediaType.APPLICATION_JSON_VALUE, value = "/v1.0/global/check-permission")
    ResponseData<CheckPermissionResponseDTO> checkPermission(@RequestHeader(HttpHeaders.AUTHORIZATION) String authHeader,
                                                             @RequestParam() String uri, @RequestParam() String scope);
    @PostMapping(consumes = MediaType.APPLICATION_JSON_VALUE, value = "/v1.0/user/profile")
    ResponseData<Profile> getProfile(@RequestBody Profile p);
}
