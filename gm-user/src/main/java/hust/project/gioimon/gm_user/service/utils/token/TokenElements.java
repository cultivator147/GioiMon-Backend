package hust.project.gioimon.gm_user.service.utils.token;

import hust.project.gioimon.gm_user.service.utils.Validator;
import lombok.*;

import java.util.Objects;
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class TokenElements {
    public static final String USER_ID_KEY = "id";
    public static final String ACCOUNT_ROLE = "role";
    public static final String IP = "ip";


    private Long userId;
    private String username;
    private int role;
    private long expirationTime;
    @Override
    public boolean equals(Object obj) {
        if (!Validator.validateNull(obj)) {
            return false;
        }
        TokenElements element = (TokenElements) obj;
        return Objects.equals(this.getUserId(), element.getUserId());
    }

    @Override
    public int hashCode() {
        return super.hashCode();
    }
}
