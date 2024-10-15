package hust.project.gioimon.gm_post.service.utils.token;

import hust.project.gioimon.gm_post.service.utils.Validator;
import lombok.*;

import java.util.Objects;
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class TokenElements {
    public static final String USER_ID_KEY = "id";
    public static final String ACCOUNT_ROLE_KEY = "role";
    public static final String IP_KEY = "ip";
    public static final String EXPIRATION_TIME = "exp";



    private Long userId;
    private String username;
    private Integer role;
    private Long expirationTime;
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
