package hust.project.gioimon.gm_post.service.exceptions.custom;

public class UserDoesNotExistException extends ApplicationException{
    public UserDoesNotExistException(String message){
        super(message);
    }
}
