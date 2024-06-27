package hust.project.gioimon.gm_post.service.repository.jdbc;

import org.springframework.data.domain.Page;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Repository
public class PostJDBCRepository extends BaseRepository{
    public List<Long> getTopStoryByPost() {
        String sql = "SELECT story_id FROM posts";
        StringBuilder sqlBuilder = new StringBuilder(""" 
                             SELECT story_id FROM posts GROUP BY story_id ORDER BY COUNT(*) DESC LIMIT 10
                """);
        Map<String, Object> params = new HashMap<>();
        return getListData(sqlBuilder.toString(), params, Long.class);
    }
}
