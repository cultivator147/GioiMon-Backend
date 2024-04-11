package hust.project.gioimon.gm_user.service.service;

import hust.project.gioimon.gm_user.service.model.dto.request.LoginRequestDTO;
import hust.project.gioimon.gm_user.service.model.dto.response.LoginResponseDTO;

public interface AuthenticationService {
    LoginResponseDTO login(LoginRequestDTO rqDTO);
    LoginResponseDTO register(LoginRequestDTO rqDTO);

}
