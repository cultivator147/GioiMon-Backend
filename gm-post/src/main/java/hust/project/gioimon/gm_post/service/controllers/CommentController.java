package hust.project.gioimon.gm_post.service.controllers;

import hust.project.gioimon.gm_post.client.check_permission.CheckPermissionAnno;
import hust.project.gioimon.gm_post.client.model.ResponseData;
import hust.project.gioimon.gm_post.client.utils.Scope;
import hust.project.gioimon.gm_post.service.model.dto.request.PostCommentDTO;
import hust.project.gioimon.gm_post.service.model.dto.response.CommentResponseDTO;
import hust.project.gioimon.gm_post.service.service.PostCommentService;
import hust.project.gioimon.gm_post.service.utils.BaseResponse;
import hust.project.gioimon.gm_post.service.utils.token.TokenUtil;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/v1.0/comment")
public class CommentController {
    private final PostCommentService postCommentService;
    @CheckPermissionAnno(uri = "/create", scope = Scope.CREATE)
    @PostMapping(value = "/create")
    public ResponseEntity<ResponseData<CommentResponseDTO>> commentPost(HttpServletRequest request, @RequestBody PostCommentDTO body){
        Long userId = TokenUtil.getUserIdFromRequest(request);
        body.setFriendId(userId);
        return BaseResponse.success(postCommentService.commentPost(body));
    }
    @PostMapping(value = "/get-all")
    public ResponseEntity<ResponseData<List<CommentResponseDTO>>> getComments(@RequestBody PostCommentDTO body){
        return BaseResponse.success(postCommentService.getListComment(body));
    }
}
