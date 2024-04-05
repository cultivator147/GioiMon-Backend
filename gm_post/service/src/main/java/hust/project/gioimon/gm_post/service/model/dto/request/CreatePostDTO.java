package hust.project.gioimon.gm_post.service.model.dto.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class CreatePostDTO {
    private long storyId;
    private String title;
    private String content;
    private String[] images;
    private String videos;
}
