package hust.project.gioimon.gm_story.client.exceptions;

import org.springframework.http.HttpStatus;

public interface TypeError {
    String getMessage();

    int getCode();

    HttpStatus getHttpStatus();
}
