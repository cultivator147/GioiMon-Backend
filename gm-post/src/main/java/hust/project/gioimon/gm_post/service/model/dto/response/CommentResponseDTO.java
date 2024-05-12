package hust.project.gioimon.gm_post.service.model.dto.response;

import jakarta.persistence.Column;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class CommentResponseDTO {
    private Long friendId;
    private Long postId;
    private Long createTime;
    private String commentText;
    private List<String> commentImages;
    private String friendName;
    private String friendAvatar;
}
