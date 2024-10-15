package hust.project.gioimon.gm_post.service.model.dto.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class AddCoinReqDTO {
    private Long coin;
    private String action;
    private Integer type;
}
