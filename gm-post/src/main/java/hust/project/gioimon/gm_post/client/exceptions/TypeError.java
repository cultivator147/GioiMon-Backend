package hust.project.gioimon.gm_post.client.exceptions;

import org.springframework.http.HttpStatus;

public interface TypeError {
    String getMessage();

    int getCode();

    HttpStatus getHttpStatus();
}
