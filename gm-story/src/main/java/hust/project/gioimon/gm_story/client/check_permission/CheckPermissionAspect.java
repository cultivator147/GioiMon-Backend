package hust.project.gioimon.gm_story.client.check_permission;

import feign.FeignException;
import feign.RetryableException;
import hust.project.gioimon.gm_story.client.feign_client.UserClient;
import jakarta.servlet.http.HttpServletRequest;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Component;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import java.io.IOException;
import java.lang.reflect.Method;

@Aspect
@Component
public class CheckPermissionAspect {
    private final UserClient userClient;
    @Autowired
    public CheckPermissionAspect(UserClient userClient){

        this.userClient = userClient;
    }
    @Around("@annotation(CheckPermissionAnno)")
    public void beforeCheckPermission(JoinPoint joinPoint){
        System.out.println("Before checking permission");
        MethodSignature signature = (MethodSignature) joinPoint.getSignature();
        Method method = signature.getMethod();

        CheckPermissionAnno checkPermissionAnno = method.getAnnotation(CheckPermissionAnno.class);
        String uri = checkPermissionAnno.uri();

        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        String tokenRequest = request.getHeader(HttpHeaders.AUTHORIZATION);
        try{
            CheckPermissionDTO response = userClient.checkPermission(tokenRequest, uri, "");
            System.out.println("Status check permission: " + response);
        }catch (RetryableException e){
            throw new HttpClientErrorException(HttpStatus.REQUEST_TIMEOUT);
        }catch (FeignException ex){
            if(ex.getCause() instanceof IOException){
                System.out.println("Check permission IOException");
                throw new HttpClientErrorException(HttpStatus.resolve(ex.status()));
            }else{
                System.out.println("!!!!!! not have permission!");
//                throw new AccessDeniedException("API is forbidden from User");
            }
        }
    }
}
