package hust.project.gioimon.gm_post.service.model.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "posts")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Post {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @Column(name = "ID")
    private Long id;
    @Column(name = "owner_id")
    private Long ownerId;
    @Column(name = "story_id")
    private Long storyId;
    @Column(name = "title")
    private String title;
    @Column(name = "content")
    private String content;
    @Column(name = "images")
    private String images;
    @Column(name = "create_time")
    private Long createTime;
    @Column(name = "last_edit_time")
    private String lastEditTime;
    @Column(name = "videos")
    private String videos;

}
