package hust.project.gioimon.gm_post.service.controllers;

import hust.project.gioimon.gm_post.client.model.ResponseData;
import hust.project.gioimon.gm_post.service.model.dto.request.CreatePostDTO;
import hust.project.gioimon.gm_post.service.model.dto.request.GetDetailPostDTO;
import hust.project.gioimon.gm_post.service.service.PostService;
import hust.project.gioimon.gm_post.service.utils.BaseResponse;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import static hust.project.gioimon.gm_post.service.utils.TokenUtil.getUserIdFromRequest;

@RestController
@RequiredArgsConstructor
@RequestMapping("/v1.0/post")
@CrossOrigin("http://localhost:3000")
public class PostController {
    private final PostService postService;
    @PostMapping(value = "/")
    public ResponseEntity<ResponseData<Object>> createPost(HttpServletRequest request, @RequestBody CreatePostDTO createPostDTO){
        Long userId = getUserIdFromRequest(request);
        postService.createPost(createPostDTO, userId);
        return BaseResponse.success();
    }
    @GetMapping(value = "/")
    public ResponseEntity<ResponseData<Object>> getPost(@RequestBody GetDetailPostDTO body){
        return BaseResponse.success(postService.getPost(body));
    }
}
