package hust.project.gioimon.gm_user.service.controllers;

import hust.project.gioimon.gm_user.client.model.ResponseData;
import hust.project.gioimon.gm_user.service.model.dto.request.AddCoinReqDTO;
import hust.project.gioimon.gm_user.service.model.dto.response.CoinDTO;
import hust.project.gioimon.gm_user.service.service.ActionCoinService;
import hust.project.gioimon.gm_user.service.utils.BaseResponse;
import hust.project.gioimon.gm_user.service.utils.token.TokenUtil;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.*;

@RestController
@Service
@RequiredArgsConstructor
@RequestMapping("/v1.0/payment")
public class PaymentController {
    private final ActionCoinService actionCoinService;
    @GetMapping(value = "/get-user-coin")
    public ResponseEntity<ResponseData<CoinDTO>> getUserCoin(HttpServletRequest request) {
        Long userId = TokenUtil.getUserIdFromRequest(request);
        return BaseResponse.success(actionCoinService.getUserCoin(userId));
    }
    @PostMapping(value = "/add-coin")
    public ResponseEntity<ResponseData<Long>> addCoin(HttpServletRequest request,@RequestBody AddCoinReqDTO addCoinRequestDTO) {
        Long userId = TokenUtil.getUserIdFromRequest(request);
        return BaseResponse.success(actionCoinService.addCoin(userId, addCoinRequestDTO.getCoin(), addCoinRequestDTO.getAction(), addCoinRequestDTO.getType().toString()));
    }
}
