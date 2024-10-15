package hust.project.gioimon.gm_user.client.exceptions;

import org.springframework.http.HttpStatus;

public interface TypeError {
    String getMessage();

    int getCode();

    HttpStatus getHttpStatus();
}
