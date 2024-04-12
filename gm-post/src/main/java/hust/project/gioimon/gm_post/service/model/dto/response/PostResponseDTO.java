package hust.project.gioimon.gm_post.service.model.dto.response;

import hust.project.gioimon.gm_post.service.model.entity.Post;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class PostResponseDTO extends Post {
    private String ownerAvatar;
    private String ownerNickname;
}
