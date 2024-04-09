package hust.project.gioimon.gm_post.service.model.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.io.Serializable;
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Embeddable
public class CommentCompositeKey implements Serializable {
    @Column(name = "post_id")
    private Long postId;

    @Column(name = "user_id")
    private Long userId;
    @Column(name = "create_time")
    private Long createTime;
}
