package hust.project.gioimon.gm_user.service.service;

import hust.project.gioimon.gm_user.service.model.dto.request.LoginRequestDTO;
import hust.project.gioimon.gm_user.service.model.dto.response.LoginResponseDTO;
import hust.project.gioimon.gm_user.service.model.entity.User;
import hust.project.gioimon.gm_user.service.repository.jdbc.UserRepository;
import hust.project.gioimon.gm_user.service.repository.jpa.UserInfoRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
@Slf4j
public class AuthenticationServiceImpl implements AuthenticationService{
    private final UserInfoRepository userInfoRepository;
    private final UserRepository userRepository;

    @Override
    public LoginResponseDTO register(LoginRequestDTO rqDTO) {
        String username = rqDTO.username;
        String password = rqDTO.password;
        userInfoRepository.save(new User(999L,username, password));
        return userRepository.addUser(username, password);
    }

    @Override
    public LoginResponseDTO login(LoginRequestDTO rqDTO) {
        String username = rqDTO.username;
        String password = rqDTO.password;
        return userRepository.getUser(username, password);
    }
}
