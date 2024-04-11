package hust.project.gioimon.gm_user.service.exceptions.custom;


public class UsernameExistedException extends ApplicationException{
    public UsernameExistedException(String message){
        super(message);
    }
}
