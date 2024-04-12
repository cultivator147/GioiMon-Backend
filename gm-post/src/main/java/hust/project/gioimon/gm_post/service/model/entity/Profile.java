package hust.project.gioimon.gm_post.service.model.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class Profile {
    @Id
    @Column(name = "user_id")
    private Long userId;
    @Column(name = "nickname")
    private String nickname;
    @Column(name = "avatar")
    private String avatar;
    private String dateOfBirth;
    private String zodiac;
    private String gender;
    private String introduction;
    private boolean onboard;
    private String location;
    private String additionalInformation;
    public Profile(Long userId){
        this.userId = userId;
    }
}
