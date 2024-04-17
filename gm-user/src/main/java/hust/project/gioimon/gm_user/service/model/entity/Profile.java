package hust.project.gioimon.gm_user.service.model.entity;

import hust.project.gioimon.gm_user.service.converter.StringListConverter;
import jakarta.persistence.Column;
import jakarta.persistence.Convert;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class Profile {
    @Id
    @Column(name = "user_id")
    private long userId;
    @Column(name = "nickname")
    private String nickname;
    @Column(name = "avatar")
    private String avatar;
    private String dateOfBirth;
    private String zodiac;
    @Convert(converter = StringListConverter.class)
    private List<String> gender = new ArrayList<>();
    private String introduction;
    private boolean onboard;
    private String location;
    private String additionalInformation;
}
