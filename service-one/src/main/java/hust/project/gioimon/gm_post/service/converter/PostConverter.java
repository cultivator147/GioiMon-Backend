package hust.project.gioimon.gm_post.service.converter;

import hust.project.gioimon.gm_post.service.model.dto.request.CreatePostDTO;
import hust.project.gioimon.gm_post.service.model.dto.response.PostResponseDTO;
import hust.project.gioimon.gm_post.service.model.entity.Post;
import hust.project.gioimon.gm_post.service.utils.TimeUtil;

public class PostConverter {
    public static Post toEntity(CreatePostDTO createPostDTO, Long ownerId) {
        Post post = new Post();
        post.setOwnerId(ownerId);
        post.setTitle(createPostDTO.getTitle());
        post.setContent(createPostDTO.getContent());
        post.setImages(createPostDTO.getImages());
        post.setVideos(createPostDTO.getVideos());
        post.setStoryId(createPostDTO.getStoryId());
        post.setCreateTime(TimeUtil.getCurrentTimeMillis());
        return post;
    }

    public static PostResponseDTO toResponseDTO(Post post) {
        PostResponseDTO postResponseDTO = new PostResponseDTO();
        postResponseDTO.setId(post.getId());
        postResponseDTO.setOwnerId(post.getOwnerId());
        postResponseDTO.setStoryId(post.getStoryId());
        postResponseDTO.setTitle(post.getTitle());
        postResponseDTO.setContent(post.getContent());
        postResponseDTO.setImages(post.getImages());
        postResponseDTO.setCreateTime(post.getCreateTime());
        postResponseDTO.setVideos(post.getVideos());
        postResponseDTO.setFavouriteCount(post.getFavouriteCount());
        postResponseDTO.setAverageFavouritePoint(post.getAverageFavouritePoint());
        postResponseDTO.setCommentCount(post.getCommentCount());
        return postResponseDTO;
    }
}
