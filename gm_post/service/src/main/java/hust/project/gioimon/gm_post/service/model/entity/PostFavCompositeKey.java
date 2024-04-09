package hust.project.gioimon.gm_post.service.model.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Embeddable
public class PostFavCompositeKey {
    @Column(name = "post_id")
    private Long postId;
    @Column(name = "user_id")
    private Long userId;
}
