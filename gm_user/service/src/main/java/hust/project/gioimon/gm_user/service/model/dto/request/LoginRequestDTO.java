package hust.project.gioimon.gm_user.service.model.dto.request;

import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class LoginRequestDTO {
    public String username;
    public String password;
}
