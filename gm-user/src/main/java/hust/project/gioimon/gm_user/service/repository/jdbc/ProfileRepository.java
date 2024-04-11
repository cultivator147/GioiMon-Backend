package hust.project.gioimon.gm_user.service.repository.jdbc;

import hust.project.gioimon.gm_user.service.model.dto.request.Profile;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
public class ProfileRepository extends BaseRepository{
    public Profile getProfile(long userId){
        String sql = "SELECT * FROM PROFILES WHERE user_id = :userId";
        Map<String, Object> params=  new HashMap<>();
        params.put("userId", userId);
        return queryForObject(sql, params, Profile.class);
    }

}
