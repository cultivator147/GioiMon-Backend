package hust.project.gioimon.gm_user.service.service;

import hust.project.gioimon.gm_user.service.converter.UserConverter;
import hust.project.gioimon.gm_user.service.model.dto.request.LoginRequestDTO;
import hust.project.gioimon.gm_user.service.model.dto.response.LoginResponseDTO;
import hust.project.gioimon.gm_user.service.model.entity.User;
import hust.project.gioimon.gm_user.service.repository.jdbc.UserRepository;
import hust.project.gioimon.gm_user.service.repository.jpa.UserInfoRepository;
import hust.project.gioimon.gm_user.service.utils.StringUtil;
import hust.project.gioimon.gm_user.service.utils.token.JWTCreator;
import hust.project.gioimon.gm_user.service.utils.token.TokenElements;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
@Slf4j
public class AuthenticationServiceImpl implements AuthenticationService{
    @Autowired
    private final UserInfoRepository userInfoRepository;
    private final UserRepository userRepository;

    @Override
    public LoginResponseDTO register(LoginRequestDTO rqDTO) {
        String username = rqDTO.getUsername();
        String password = rqDTO.getPassword();
//        String confirmPassword = rqDTO.getConfirmPassword();
//        if (!password.equals(confirmPassword)) {
//            throw new EshopAPIException(HttpStatus.BAD_REQUEST, ExceptionConstant.PASSWORD_CONFIRM_NOT_MATCH);
//        }
        User user = userInfoRepository.findByUsername(username);
        if (user != null) {
//            throw new EshopAPIException(HttpStatus.BAD_REQUEST, ExceptionConstant.USERNAME_EXIST);
        }

        int status = 0;
        long now = System.currentTimeMillis();

        User userEntity = new User();
        userEntity.setUsername(username);
        userEntity.setPassword(password);
        userEntity.setTokExpTime(now + 7 * 24 * 3600000);
        userEntity.setStatus(status);
        userInfoRepository.save(userEntity);
        return login(username, password);
    }
    @Override
    public LoginResponseDTO login(LoginRequestDTO rqDTO) {
        String username = rqDTO.username;
        String password = rqDTO.password;
        return login(username, password);
    }
    private LoginResponseDTO login(String username, String password) {
        User user = userInfoRepository.findByUsername(username);
        //TODO: AUTHEN HERE
        //TODO: GENERATE Token:
        String token = JWTCreator.getInstance().sign(new TokenElements(user.getId(), user.getUsername(), 1, System.currentTimeMillis() + 24*60*60*1000));
        System.out.println("token signed: " + token);
        user.setAccessToken(token);
        userInfoRepository.save(user);
        LoginResponseDTO loginResponseDTO = UserConverter.toDTO(user);
        return loginResponseDTO;
    }
}
