package hust.project.gioimon.gm_story.service.utils.token;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.http.HttpHeaders;

public class TokenUtil {
    public static String getTokenFromRequest(HttpServletRequest request) {
        return request.getHeader(HttpHeaders.AUTHORIZATION);
    }

    public static Long getUserIdFromToken(String token) {
        TokenElements tokenElements = JWTCreator.getInstance().parse(token);
        return tokenElements.getUserId();
    }

    public static Long getUserIdFromRequest(HttpServletRequest request) {
        return getUserIdFromToken(getTokenFromRequest(request));
    }
}
