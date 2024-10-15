package hust.project.gioimon.gm_user.service.utils.token;

import io.jsonwebtoken.*;
import lombok.Getter;


public class JWTCreator {

    private static final String GM_SIGNATURE_ORIGIN = "GM_TOKEN_SIGNATURE_Hh140720020706052005@#!";
    private static final String GM_SIGNATURE = "R01fVE9LRU5fU0lHTkFUVVJFX0hoMTQwNzIwMDIwNzA2MDUyMDA1QCMh";
    private JWTCreator() {

    }

    @Getter
    private static final JWTCreator instance = new JWTCreator();

    public String sign(TokenElements tokenElement) {
        return Jwts.builder()
                .setSubject(tokenElement.getUserId().toString())
                .claim(TokenElements.ACCOUNT_ROLE_KEY, tokenElement.getRole())
                .claim(TokenElements.EXPIRATION_TIME, tokenElement.getExpirationTime())
                .signWith(SignatureAlgorithm.HS256, GM_SIGNATURE)
                .compact();
    }

    public TokenElements parse(String token){
        TokenElements tokenElement = null;
        try {
            JwtParserBuilder parser = Jwts.parser();
            parser.setSigningKey(GM_SIGNATURE);
            Claims body = parser.build().parseClaimsJws(token).getPayload();
            Long userId = Long.parseLong(body.getSubject());
            Integer role = (Integer) body.get(TokenElements.ACCOUNT_ROLE_KEY);
            Long expirationTime = (Long)body.get(TokenElements.EXPIRATION_TIME);
            return TokenElements.builder()
                    .userId(userId)
                    .expirationTime(expirationTime)
                    .role(role)
                    .build();
        } catch (Exception ex) {
            throw new RuntimeException("Error parsing token: "+ ex);
        }
    }
}
