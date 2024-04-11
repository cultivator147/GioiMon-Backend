package hust.project.gioimon.gm_user.service.model.dto.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class   Profile {
    private long userId;
    private String nickname;
    private String picture;
    private String dateOfBirth;
    private String zodiac;
    private String gender;
    private String introduction;
    private boolean onboard;
    private String location;
    private String additionalInformation;
}
