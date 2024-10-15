package hust.project.gioimon.gm_user.service.exceptions.custom;

public class UserDoesNotExistException extends ApplicationException{
    public UserDoesNotExistException(String message){
        super(message);
    }
}
