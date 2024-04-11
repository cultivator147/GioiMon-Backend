package hust.project.gioimon.gm_user.service.converter;

import hust.project.gioimon.gm_user.service.model.dto.request.LoginRequestDTO;
import hust.project.gioimon.gm_user.service.model.dto.response.LoginResponseDTO;
import hust.project.gioimon.gm_user.service.model.entity.User;
public class UserConverter{
    public static User toEntity(LoginRequestDTO loginRequestDTO){
        User user = new User();
        return user;
    }
    public static LoginResponseDTO toDTO(User user){
        LoginResponseDTO loginResponseDTO = new LoginResponseDTO();
        loginResponseDTO.setUsername(user.getUsername());
        loginResponseDTO.setId(user.getId());
        loginResponseDTO.setToken(user.getAccessToken());
//        loginResponseDTO.setStatus(user.getStatus());
//        loginResponseDTO.setRoles(user.getRoles());
        return loginResponseDTO;
    }
}
