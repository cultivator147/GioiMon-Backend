package hust.project.gioimon.gm_user.service.controllers;

import hust.project.gioimon.gm_user.client.check_permission.CheckPermissionDTO;
import hust.project.gioimon.gm_user.client.model.ResponseData;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/v1.0/global")
@RequiredArgsConstructor
@CrossOrigin("http://localhost:3000")
public class GlobalController {
    @GetMapping(value = "/global/check-permission")
    public ResponseEntity<ResponseData<CheckPermissionDTO>> checkPermission(){
        return null
    }
}
