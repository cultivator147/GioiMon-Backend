package hust.project.gioimon.gm_user.service.service;

import hust.project.gioimon.gm_user.client.check_permission.CheckPermissionResponseDTO;
import hust.project.gioimon.gm_user.service.model.entity.User;
import hust.project.gioimon.gm_user.service.repository.jdbc.UserRepository;
import hust.project.gioimon.gm_user.service.repository.jpa.UserInfoRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class GlobalService {
    private final UserRepository userRepository;
    private final UserInfoRepository userInfoRepository;
    public CheckPermissionResponseDTO checkPermission(String token, String uri){
        User user = userInfoRepository.findByAccessToken(token);
        if(user == null){
            System.out.println("No user found");
            return new CheckPermissionResponseDTO(null, false);
        }
        return new CheckPermissionResponseDTO(user.getId(), true);
    }
}
