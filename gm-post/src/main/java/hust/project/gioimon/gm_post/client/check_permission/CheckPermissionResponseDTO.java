package hust.project.gioimon.gm_post.client.check_permission;

import lombok.*;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Getter
@Setter
public class CheckPermissionResponseDTO implements Serializable {
    private long userId;
    private boolean result;
}
