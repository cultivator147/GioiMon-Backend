package hust.project.gioimon.gm_user.service.controllers;

import hust.project.gioimon.gm_user.client.model.ResponseData;
import hust.project.gioimon.gm_user.service.model.entity.Profile;
import hust.project.gioimon.gm_user.service.service.ProfileService;
import hust.project.gioimon.gm_user.service.utils.BaseResponse;
import hust.project.gioimon.gm_user.service.utils.token.TokenUtil;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/v1.0/user/profile")
@RequiredArgsConstructor
@CrossOrigin("http://localhost:3000")
public class ProfileController {
    private final ProfileService profileService;
    @PostMapping("")
    public ResponseEntity<ResponseData<Profile>> getProfile(@RequestBody Profile dto){
        return BaseResponse.success(profileService.get(dto));
    }
    @PostMapping("/update")
    public ResponseEntity<ResponseData<Profile>> updateProfile(HttpServletRequest request, @RequestBody Profile dto){
        return BaseResponse.success(profileService.update(TokenUtil.getUserIdFromRequest(request), dto));
    }
}
