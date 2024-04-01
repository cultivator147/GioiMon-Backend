package hust.project.gioimon.gm_post.service.converter;

import hust.project.gioimon.gm_post.service.model.dto.request.CreatePostDTO;
import hust.project.gioimon.gm_post.service.model.entity.Post;
import hust.project.gioimon.gm_post.service.utils.TimeUtil;

public class PostConverter {
    public static Post toEntity(CreatePostDTO createPostDTO, Long ownerId){
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
}
