package hust.project.gioimon.gm_post.client.feign_client;

import hust.project.gioimon.gm_post.client.check_permission.CheckPermissionResponseDTO;
import hust.project.gioimon.gm_post.client.model.ResponseData;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestParam;

@FeignClient(value = "user-client", url = "http://localhost:8801")
public interface UserClient {
    @GetMapping(consumes = MediaType.APPLICATION_JSON_VALUE, value = "/v1.0/global/check-permission")
    ResponseData<CheckPermissionResponseDTO> checkPermission(@RequestHeader(HttpHeaders.AUTHORIZATION) String authHeader,
                                                             @RequestParam() String uri);
}
