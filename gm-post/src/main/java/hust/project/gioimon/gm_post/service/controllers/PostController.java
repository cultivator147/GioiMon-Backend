package hust.project.gioimon.gm_post.service.controllers;

import hust.project.gioimon.gm_post.client.check_permission.CheckPermissionAnno;
import hust.project.gioimon.gm_post.client.model.GetPostStoryRequest;
import hust.project.gioimon.gm_post.client.model.ResponseData;
import hust.project.gioimon.gm_post.client.utils.Scope;
import hust.project.gioimon.gm_post.service.model.dto.request.CreatePostDTO;
import hust.project.gioimon.gm_post.service.model.dto.request.GetDetailPostDTO;
import hust.project.gioimon.gm_post.service.model.dto.request.PostCommentDTO;
import hust.project.gioimon.gm_post.service.model.dto.response.CommentResponseDTO;
import hust.project.gioimon.gm_post.service.model.entity.Post;
import hust.project.gioimon.gm_post.service.model.entity.PostFavourite;
import hust.project.gioimon.gm_post.service.service.PostCommentService;
import hust.project.gioimon.gm_post.service.service.PostFavouriteService;
import hust.project.gioimon.gm_post.service.service.PostService;
import hust.project.gioimon.gm_post.service.utils.BaseResponse;
import hust.project.gioimon.gm_post.service.utils.token.TokenUtil;
import jakarta.servlet.annotation.HttpMethodConstraint;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import static hust.project.gioimon.gm_post.service.utils.token.TokenUtil.getUserIdFromRequest;

@RestController
@RequiredArgsConstructor
@RequestMapping("/v1.0/post")
public class PostController {
    private final PostService postService;
    private final PostFavouriteService postFavouriteService;
    @CheckPermissionAnno(uri = "create-post", scope = Scope.CREATE)
    @PostMapping(value = "/")
    public ResponseEntity<ResponseData<Object>> createPost(HttpServletRequest request, @RequestBody CreatePostDTO createPostDTO){
        Long userId = getUserIdFromRequest(request);
        postService.createPost(TokenUtil.getTokenFromRequest(request), userId, createPostDTO);
        return BaseResponse.success();
    }
    @GetMapping(value = "/")
    public ResponseEntity<ResponseData<Object>> getPost(@RequestBody GetDetailPostDTO body){
        return BaseResponse.success(postService.getPost(body));
    }
    @GetMapping(value = "/top-post-story")
    public ResponseEntity<ResponseData<Object>> topPostStory(){
        return BaseResponse.success(postService.topPostStory());
    }
    @CheckPermissionAnno(uri = "create-post", scope = Scope.UPDATE)
    @PostMapping(value = "/fav-post")
    public ResponseEntity<ResponseData<Post>> favouritePost(HttpServletRequest request, @RequestBody PostFavourite body){
        Long userId = TokenUtil.getUserIdFromRequest(request);
        return BaseResponse.success(postFavouriteService.favouritePost(userId, body));
    }

}
