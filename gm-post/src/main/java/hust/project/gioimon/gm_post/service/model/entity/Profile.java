package hust.project.gioimon.gm_post.service.model.entity;

import hust.project.gioimon.gm_post.service.converter.StringListConverter;
import jakarta.persistence.Column;
import jakarta.persistence.Convert;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Profile {
    private Long userId;
    private String nickname;
    private String avatar;
    private String dateOfBirth;
    private String zodiac;
    @Convert(converter = StringListConverter.class)
    private List<String> gender;
    private String introduction;
    private boolean onboard;
    private String location;
    private String additionalInformation;
    public Profile(Long userId){
        this.userId = userId;
    }
}
