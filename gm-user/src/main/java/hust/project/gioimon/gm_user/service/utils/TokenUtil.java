package hust.project.gioimon.gm_user.service.utils;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.http.HttpHeaders;
import org.springframework.util.StringUtils;

public class TokenUtil {
    public static String getTokenFromRequest(HttpServletRequest request){

        String bearerToken = request.getHeader(HttpHeaders.AUTHORIZATION);

        if(StringUtils.hasText(bearerToken) && bearerToken.startsWith("Bearer ")){
            return bearerToken.substring(7, bearerToken.length());
        }

        return null;
    }
    public static Long getUserIdFromToken(String token){
        return 1L;
    }
    public static Long getUserIdFromRequest(HttpServletRequest request){
        return getUserIdFromToken(getTokenFromRequest(request));
    }
}
