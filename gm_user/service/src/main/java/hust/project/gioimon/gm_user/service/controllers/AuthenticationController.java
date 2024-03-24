package hust.project.gioimon.gm_user.service.controllers;

import hust.project.gioimon.gm_user.client.model.ResponseData;
import hust.project.gioimon.gm_user.service.model.dto.request.LoginRequestDTO;
import hust.project.gioimon.gm_user.service.model.dto.response.LoginResponseDTO;
import hust.project.gioimon.gm_user.service.service.AuthenticationService;
import hust.project.gioimon.gm_user.service.utils.BaseResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/v1.0/auth")
@RequiredArgsConstructor
@CrossOrigin("http://localhost:3000")
public class AuthenticationController {
    private final AuthenticationService authenticationService;
    @PostMapping(value = "/login", consumes = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<ResponseData<LoginResponseDTO>> login(@RequestBody LoginRequestDTO rqDTO){
        return BaseResponse.success(authenticationService.login(rqDTO));
    }
    @PostMapping(value = "/register", consumes = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<ResponseData<LoginResponseDTO>> register(@RequestBody  LoginRequestDTO rqDTO){
        return BaseResponse.success(authenticationService.register(rqDTO));

    }

}
