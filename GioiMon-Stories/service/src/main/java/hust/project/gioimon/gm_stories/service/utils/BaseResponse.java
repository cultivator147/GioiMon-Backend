package hust.project.gioimon.gm_stories.service.utils;

import hust.project.gioimon.gm_stories.client.model.ResponseData;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
public class BaseResponse {
    private BaseResponse() {
        throw new IllegalStateException("Utility class");
    }
    public static <T> ResponseEntity<ResponseData<T>> success(){
        return ResponseEntity.status(HttpStatus.OK).body(new ResponseData<T>().success());
    }
    public static <T> ResponseEntity<ResponseData<T>> success(T data){
        return ResponseEntity.status(HttpStatus.OK).body(new ResponseData<T>().success(data));
    }
    public static <T> ResponseEntity<ResponseData<T>> error(int code, String message, HttpStatus status) {
        return ResponseEntity.status(status).body(new ResponseData<T>().error(code, message, status.value()));
    }
}
