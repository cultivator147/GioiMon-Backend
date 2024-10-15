package hust.project.gioimon.gm_post.service.controllers;

import hust.project.gioimon.gm_post.client.check_permission.CheckPermissionAnno;
import hust.project.gioimon.gm_post.client.model.ResponseData;
import hust.project.gioimon.gm_post.client.utils.Scope;
import hust.project.gioimon.gm_post.service.model.dto.request.CreatePostDTO;
import hust.project.gioimon.gm_post.service.model.dto.request.GetDetailPostDTO;
import hust.project.gioimon.gm_post.service.service.PostService;
import hust.project.gioimon.gm_post.service.utils.BaseResponse;
import hust.project.gioimon.gm_post.service.utils.token.TokenUtil;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import static hust.project.gioimon.gm_post.service.utils.token.TokenUtil.getUserIdFromRequest;

@RestController
@RequiredArgsConstructor
@RequestMapping("/v1.0/post")
public class PostController {
    private final PostService postService;
//    @CheckPermissionAnno(uri = "create-post", scope = Scope.CREATE)
    @PostMapping(value = "/")
    public ResponseEntity<ResponseData<Object>> createPost(HttpServletRequest request, @RequestBody CreatePostDTO createPostDTO){
        Long userId = getUserIdFromRequest(request);
        postService.createPost(TokenUtil.getTokenFromRequest(request), userId, createPostDTO);
        return BaseResponse.success();
    }
}
