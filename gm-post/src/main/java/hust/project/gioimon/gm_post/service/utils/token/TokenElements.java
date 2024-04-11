package hust.project.gioimon.gm_post.service.utils.token;

import hust.project.gioimon.gm_post.service.utils.Validator;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Objects;
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class TokenElements {
    public static final String USER_ID_KEY = "id";
    public static final String ACCOUNT_ROLE = "role";
    public static final String VERIFIED_AGE = "va";
    public static final String CERTIFICATED = "cer";
    public static final String IP = "ip";
    public static final String ADJUST_ID = "adid";


    private String userId;
    private int verifiedAge;
    private Integer applicationType;
    private int certificatedStatus;
    private String ip;
    private String accountRole;

    @Override
    public boolean equals(Object obj) {
        if (!Validator.validateNull(obj)) {
            return false;
        }
        TokenElements element = (TokenElements) obj;
        return Objects.equals(this.getUserId(), element.getUserId())

                && Objects.equals(this.getApplicationType(), element.getApplicationType());
    }

    @Override
    public int hashCode() {
        return super.hashCode();
    }
}
