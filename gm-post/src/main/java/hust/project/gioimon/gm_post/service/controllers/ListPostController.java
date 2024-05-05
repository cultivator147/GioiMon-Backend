package hust.project.gioimon.gm_post.service.controllers;

import hust.project.gioimon.gm_post.client.model.ResponseData;
import hust.project.gioimon.gm_post.service.model.dto.response.PostResponseDTO;
import hust.project.gioimon.gm_post.service.model.entity.Post;
import hust.project.gioimon.gm_post.service.service.ListPostService;
import hust.project.gioimon.gm_post.service.utils.BaseResponse;
import hust.project.gioimon.gm_post.service.utils.token.TokenUtil;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/v1.0/list-post")
@RequiredArgsConstructor
public class ListPostController {
    private final ListPostService listPostService;
    @GetMapping("/")
    public ResponseEntity<ResponseData<List<PostResponseDTO>>> getPostPagination(HttpServletRequest request,
                                                                                 @RequestParam(name = "page", defaultValue = "0") int page,
                                                                                 @RequestParam(name = "size", defaultValue = "5") int size)
    {
        Long userId = TokenUtil.getUserIdFromRequest(request);
        return BaseResponse.success(listPostService.getListPost(userId, page, size));
    }
}
