package hust.project.gioimon.gm_user.service.controllers;

import hust.project.gioimon.gm_user.client.check_permission.CheckPermissionDTO;
import hust.project.gioimon.gm_user.client.model.ResponseData;
import hust.project.gioimon.gm_user.service.service.GlobalService;
import hust.project.gioimon.gm_user.service.utils.BaseResponse;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/v1.0/global")
@RequiredArgsConstructor
@CrossOrigin("http://localhost:3000")
public class GlobalController {
    private final GlobalService globalService;
    @GetMapping(value = "/check-permission")
    public ResponseEntity<ResponseData<CheckPermissionDTO>> checkPermission(HttpServletRequest request, @RequestParam String uri){
        String token = request.getHeader(HttpHeaders.AUTHORIZATION);
        return BaseResponse.success(globalService.checkPermission(token, uri));
    }
}
