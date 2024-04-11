package hust.project.gioimon.gm_post.service.utils.token;

import com.sun.org.apache.xml.internal.security.Init;
import io.jsonwebtoken.*;

import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import java.nio.charset.StandardCharsets;

public class JWTCreator {

    private static final String SIGNATURE = "GM_TOKEN_SIGNATURE_Hh1407";

    private JWTCreator() {
        Init.init();
    }

    private static final JWTCreator instance = new JWTCreator();

    public static JWTCreator getInstance() {
        return instance;
    }

    public String sign(TokenElements tokenElement) {
        ClaimsBuilder claimsBuilder = Jwts.claims();
        claimsBuilder.add(TokenElements.USER_ID_KEY, tokenElement.getUserId());

        Claims claims = claimsBuilder.build();
        JwtBuilder jwtBuilder = Jwts.builder();
        jwtBuilder.claims(claims);
        jwtBuilder.signWith(SignatureAlgorithm.ES256, SIGNATURE);
        return jwtBuilder.compact();
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
            String userId = (String) body.get(TokenElements.USER_ID_KEY);
            return TokenElements.builder()
                    .userId(userId)
                    .build();
        } catch (Exception ex) {
            throw new Exception("Error parsing token: "+ ex);
        }
    }
}
