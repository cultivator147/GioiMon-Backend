package hust.project.gioimon.gm_user.service.service;

import hust.project.gioimon.gm_user.client.check_permission.CheckPermissionResponseDTO;
import hust.project.gioimon.gm_user.service.model.entity.User;
import hust.project.gioimon.gm_user.service.repository.jpa.UserInfoRepository;
import hust.project.gioimon.gm_user.service.utils.TimeUtil;
import hust.project.gioimon.gm_user.service.utils.token.JWTCreator;
import hust.project.gioimon.gm_user.service.utils.token.TokenElements;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class GlobalService {
    private final UserInfoRepository userInfoRepository;
    public CheckPermissionResponseDTO checkPermission(String token, String uri, String scope){
        TokenElements tokenElements = JWTCreator.getInstance().parse(token);
        Long userId = tokenElements.getUserId();
        User user = userInfoRepository.findById(userId).orElse(null);
        if(user == null){
            System.out.println("No user found");
            return new CheckPermissionResponseDTO(null, false);
        }
        Long expirationTime = tokenElements.getExpirationTime();
        if(expirationTime <= TimeUtil.getCurrentTimeMillis()){
            return new CheckPermissionResponseDTO(null, false);
        }
        //TODO: Verify uri & scope
        return new CheckPermissionResponseDTO(user.getId(), true);
    }
}
