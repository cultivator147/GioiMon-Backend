package hust.project.gioimon.gm_post.service.service;

import hust.project.gioimon.gm_post.client.feign_client.UserClient;
import hust.project.gioimon.gm_post.service.converter.CommentConverter;
import hust.project.gioimon.gm_post.service.model.dto.request.PostCommentDTO;
import hust.project.gioimon.gm_post.service.model.dto.response.CommentResponseDTO;
import hust.project.gioimon.gm_post.service.model.entity.PostComment;
import hust.project.gioimon.gm_post.service.model.entity.Profile;
import hust.project.gioimon.gm_post.service.repository.jpa.PostCommentRepository;
import hust.project.gioimon.gm_post.service.utils.Validator;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class PostCommentService {
    private final PostService postService;
    private final PostCommentRepository postCommentRepository;
    private final UserClient userClient;
    public synchronized CommentResponseDTO commentPost(PostCommentDTO postCommentDTO) {
        Long postId = postCommentDTO.getPostId();
        if (postService.getPost(postId) == null) {
            throw new RuntimeException();
        }
        PostComment postComment = CommentConverter.toEntity(postCommentDTO);
        PostComment commentEntity = postCommentRepository.save(postComment);
        CommentResponseDTO comment = CommentConverter.toDTO(commentEntity);
        return setFriendProfile(comment);
    }
    private CommentResponseDTO setFriendProfile(CommentResponseDTO comment){
        Profile p = userClient.getProfile(new Profile(comment.getFriendId())).getData();
        if(!Validator.validateNull(p)){
            return comment;
        }
        if(Validator.validateNull(p.getAvatar())){
            comment.setFriendAvatar(p.getAvatar());
        }
        if(Validator.validateNull(p.getNickname())){
            comment.setFriendName(p.getNickname());
        }
        return comment;
    }
    public long getCommentCount(long postId){
        return postCommentRepository.getCommentCount(postId);
    }
    public List<CommentResponseDTO> getListComment(PostCommentDTO dto){
        List<PostComment> commentsEntity = postCommentRepository.getListComment(dto.getPostId());
        List<CommentResponseDTO> comments = new ArrayList<>();
        for(PostComment postComment : commentsEntity){
            comments.add(setFriendProfile(CommentConverter.toDTO(postComment)));
        }
        return comments;
    }
}
