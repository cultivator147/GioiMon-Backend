package hust.project.gioimon.gm_user.client.check_permission;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CheckPermissionResponseDTO implements Serializable {
    private Long userId;
    private boolean result;
}
