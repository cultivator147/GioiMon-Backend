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

    public TokenElements parse(String token) {
        TokenElements tokenElement = null;
        try {
            SecretKey secretKey = new SecretKeySpec(SIGNATURE.getBytes(StandardCharsets.UTF_8), "");
            JwtParserBuilder parser = Jwts.parser();
            parser.decryptWith()
            JwtParser parser = Jwts.parser();
            parser.setSigningKey(SIGNATURE);
            Claims body = parser.parseClaimsJws(token).getBody();
            Integer verifiedAge = (Integer)body.get(TokenElement.VERIFIED_AGE);
            String accountRole = (String)body.get(TokenElement.ACCOUNT_ROLE);
            String userId = (String) body.get(TokenElement.USER_ID_KEY);
            Integer certificated = (Integer) body.get(TokenElement.CERTIFICATED);
            String usingApplication = (String)body.get(TokenElement.APPLICATION);
            Integer applicationType = (Integer)body.get(TokenElement.APPLICATION_TYPE);
            String applicationVersion = (String)body.get(TokenElement.APPLICATION_VERSION);
            String adjustId = (String)body.get(TokenElement.ADJUST_ID);
            return TokenElement.builder()
                    .accountRole(AccountRole.getAccountRole(accountRole))
                    .verifiedAge(verifiedAge)
                    .userId(userId)
                    .certificatedStatus(certificated)
                    .usingApplication(usingApplication)
                    .applicationType(applicationType)
                    .applicationVersion(applicationVersion)
                    .adjustId(adjustId)
                    .build();
        } catch (Exception ex) {
            Util.addErrorLog(ex);
        }
        return tokenElement;
    }

    private void put(Claims claims, String key, Object value) {
        if (Util.validate(value)) {
            claims.put(key, value);
        }
    }
}
