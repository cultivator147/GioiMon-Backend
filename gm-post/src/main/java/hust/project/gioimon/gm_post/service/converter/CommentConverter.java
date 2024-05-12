package hust.project.gioimon.gm_post.service.converter;

import hust.project.gioimon.gm_post.service.model.dto.request.PostCommentDTO;
import hust.project.gioimon.gm_post.service.model.dto.response.CommentResponseDTO;
import hust.project.gioimon.gm_post.service.model.entity.PostComment;

public class CommentConverter {
    public static PostComment toEntity(PostCommentDTO postCommentDTO){
        PostComment postComment = new PostComment();
        postComment.setUserId(postCommentDTO.getFriendId());
        postComment.setPostId(postCommentDTO.getPostId());
        postComment.setCommentImages(postCommentDTO.getCommentImages());
        postComment.setCommentText(postCommentDTO.getCommentText());
        long current = System.currentTimeMillis();
        postComment.setCreateTime(current);
        return postComment;
    }
    public static CommentResponseDTO toDTO(PostComment postComment){
        CommentResponseDTO commentResponseDTO = new CommentResponseDTO();
        commentResponseDTO.setFriendId(postComment.getUserId());
        commentResponseDTO.setPostId(postComment.getPostId());
        commentResponseDTO.setCommentText(postComment.getCommentText());
        commentResponseDTO.setCommentImages(postComment.getCommentImages());
        commentResponseDTO.setCreateTime(postComment.getCreateTime());
        return commentResponseDTO;
    }
}
