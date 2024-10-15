package hust.project.gioimon.gm_post.service.repository.jdbc;

import org.springframework.data.domain.Page;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Repository
public class PostJDBCRepository extends BaseRepository{
    public List<Long> getTopStoryByPost() {
        StringBuilder sqlBuilder = new StringBuilder(""" 
                             SELECT story_id FROM posts GROUP BY story_id ORDER BY SUM(COUNT(*) * 10, COMMENT * 3, FAVOURITE_POINT * 5) DESC LIMIT 10
                """);
        Map<String, Object> params = new HashMap<>();
        return getListData(sqlBuilder.toString(), params, Long.class);
    }
}
