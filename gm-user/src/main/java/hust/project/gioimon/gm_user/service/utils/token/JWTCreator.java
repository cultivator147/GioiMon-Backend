package hust.project.gioimon.gm_user.service.utils.token;

import io.jsonwebtoken.*;

import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import java.nio.charset.StandardCharsets;

public class JWTCreator {

    private static final String SIGNATURE = "GM_TOKEN_SIGNATURE_Hh1407";

    private JWTCreator() {

    }

    private static final JWTCreator instance = new JWTCreator();

    public static JWTCreator getInstance() {
        return instance;
    }

    public String sign(TokenElements tokenElement) {
        JwtBuilder builder = Jwts.builder();
        ClaimsBuilder claimsBuilder = Jwts.claims();
        claimsBuilder.add(TokenElements.USER_ID_KEY, tokenElement.getUserId());
//        ClaimsBuilder claimsBuilder = Jwts.builder().claims(TokenElements.USER_ID_KEY, tokenElement.getUserId());
//        claimsBuilder.add(TokenElements.USER_ID_KEY, tokenElement.getUserId());
//
//        Claims claims = claimsBuilder.build();
//        JwtBuilder jwtBuilder = Jwts.builder();
//        jwtBuilder.claims(claims);
//        jwtBuilder.signWith(SignatureAlgorithm.ES256, SIGNATURE);
        return builder.claims(claimsBuilder.build()).compact();
    }

    public TokenElements parse(String token) throws Exception {
        TokenElements tokenElement = null;
        try {
            SignatureAlgorithm sa = SignatureAlgorithm.ES256;
            SecretKey secretKey = new SecretKeySpec(SIGNATURE.getBytes(StandardCharsets.UTF_8), sa.getJcaName());
            JwtParserBuilder parser = Jwts.parser();
            parser.decryptWith(secretKey);

//            JwtParser parser = Jwts.parser();
            Claims body = parser.build().parseEncryptedClaims(token).getPayload();
            Long userId = (Long) body.get(TokenElements.USER_ID_KEY);
            return TokenElements.builder()
                    .userId(userId)
                    .build();
        } catch (Exception ex) {
            throw new Exception("Error parsing token: "+ ex);
        }
    }
}
