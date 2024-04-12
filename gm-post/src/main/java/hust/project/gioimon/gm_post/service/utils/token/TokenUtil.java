package hust.project.gioimon.gm_post.service.utils.token;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.http.HttpHeaders;
import org.springframework.util.StringUtils;

public class TokenUtil {
    public static String getTokenFromRequest(HttpServletRequest request){
        return request.getHeader(HttpHeaders.AUTHORIZATION);
    }
    public static Long getUserIdFromToken(String token){
        TokenElements tokenElements = JWTCreator.getInstance().parse(token);
        return tokenElements.getUserId();
    }
    public static Long getUserIdFromRequest(HttpServletRequest request){
        return getUserIdFromToken(getTokenFromRequest(request));
    }
}
