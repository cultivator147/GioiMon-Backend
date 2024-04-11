package hust.project.gioimon.gm_post.service.model.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "post_favourite")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@IdClass(PostFavCompositeKey.class)
public class PostFavourite {
    @Id
    @Column(name = "user_id")
    private Long userId;
    @Id
    @Column(name = "post_id")
    private Long postId;
    @Column(name = "favourite")
    private int favourite;
    @Column(name = "favourite_point")
    private int favouritePoint;
}
