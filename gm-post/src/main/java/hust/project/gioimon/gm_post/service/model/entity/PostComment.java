package hust.project.gioimon.gm_post.service.model.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Entity
@Table(name = "post_comment")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@IdClass(CommentCompositeKey.class)
public class PostComment {
    @Id
    @Column(name = "user_id")
    private Long userId;
    @Id
    @Column(name = "post_id")
    private Long postId;
    @Id
    @Column(name = "create_time")
    private Long createTime;
    @Column(name = "comment_text")
    private String commentText;
    @Column(name = "comment_images")
    private List<String> commentImages;

}
