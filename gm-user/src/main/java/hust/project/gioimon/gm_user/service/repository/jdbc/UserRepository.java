package hust.project.gioimon.gm_user.service.repository.jdbc;

import hust.project.gioimon.gm_user.service.exceptions.custom.UserDoesNotExistException;
import hust.project.gioimon.gm_user.service.exceptions.custom.UsernameExistedException;
import hust.project.gioimon.gm_user.service.model.dto.response.LoginResponseDTO;
import hust.project.gioimon.gm_user.service.utils.StringUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Slf4j
@Repository
public class UserRepository extends BaseRepository {
    public LoginResponseDTO addUser(String username, String password) {
        String sql = "SELECT ID FROM users WHERE USERNAME = :USERNAME";
        Map<String, Object> params = new HashMap<>();
        params.put("USERNAME", username);
        Long id = queryForObject(sql, params, Long.class);
        if (id != null) {
            throw new UsernameExistedException("USER NAME EXISTED");
        }

        sql = "INSERT INTO users (USERNAME, PASSWORD, ACCESS_TOKEN) VALUES(:USERNAME,:PASSWORD, :TOKEN)";
        params.put("PASSWORD", StringUtil.Hash(password));
        params.put("TOKEN", StringUtil.generateToken());

        executeSqlDatabase(sql, params);
        return getUser(username, password);
    }

    public LoginResponseDTO getUser(String username, String password) {
        String hashedPassword = StringUtil.Hash(password);
        String sql = """
                    SELECT USERNAME, ID, ACCESS_TOKEN FROM users
                    WHERE
                    USERNAME = :USERNAME
                    AND PASSWORD = :PASSWORD
                    AND FLAG_STATUS = :FLAG_STATUS
                """;
        Map<String, Object> params = new HashMap<>();
        params.put("USERNAME", username);
        params.put("PASSWORD", hashedPassword);
        params.put("FLAG_STATUS", 1);
        LoginResponseDTO rpDTO = queryForObject(sql, params, LoginResponseDTO.class);
        if (rpDTO == null) throw new UserDoesNotExistException("USER DOES NOT EXIST");
        return rpDTO;
    }
    public Long getUserCoin(Long userId){
        String sql = "SELECT coin FROM users WHERE ID = :ID";
        Map<String, Object> params = new HashMap<>();
        params.put("ID", userId);
        return queryForObject(sql, params, Long.class);
    }
    public Long updateUserCoin(Long userId, Long point){
        String sql = "UPDATE users SET coin = :COIN WHERE ID = :ID";
        Map<String, Object> params = new HashMap<>();
        params.put("COIN", point);
        params.put("ID", userId);
        executeSqlDatabase(sql, params);
        return point;
    }
}
