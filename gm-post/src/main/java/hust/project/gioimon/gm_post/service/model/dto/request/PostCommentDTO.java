package hust.project.gioimon.gm_post.service.model.dto.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class PostCommentDTO {
    private Long friendId;
    private Long postId;
    private List<String> commentImages;
    private String commentText;
}
