package hust.project.gioimon.gm_user.service.service;

import hust.project.gioimon.gm_user.service.model.dto.response.CoinDTO;
import hust.project.gioimon.gm_user.service.repository.jdbc.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ActionCoinService {
    private final UserRepository userRepository;
    public Long addCoin(Long userId, Long coin, String action, String description) {
        return userRepository.updateUserCoin(userId, getUserCoin(userId).getCoin() + coin);
    }
    public CoinDTO getUserCoin(Long userId) {
        return new CoinDTO(userRepository.getUserCoin(userId));
    }
}
