package hust.project.gioimon.gm_story.service.repository;

import hust.project.gioimon.gm_story.service.model.DetailStoryDTO;
import hust.project.gioimon.gm_story.service.model.HistoryStory;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
public class StoryRepository extends BaseRepository{
    public DetailStoryDTO get(int storyId){
        String sql = """
                    SELECT * FROM stories WHERE id = :storyId
                """;
        Map<String, Object> params = new HashMap<>();
        params.put("storyId", storyId);
        DetailStoryDTO result = queryForObject(sql, params, DetailStoryDTO.class);
        result.setWritingState(writingState(Integer.parseInt(result.getWritingState())));
        return result;
    }
    private String writingState(int writingState){
        return writingState == 2 ? "Đang ra" : writingState == 1 ? "Hoàn thành" : "Ngừng ra";
    }
    public String getTitle(long storyId){
        String sql = "SELECT title FROM stories WHERE id = :storyId";
        Map<String, Object> params = new HashMap<>();
        params.put("storyId", storyId);
        return queryForObject(sql, params, String.class);
    }
    public HistoryStory logHistory(long userId, long storyId, long chapterNumber){
        String sql = "SELECT * FROM reading_history WHERE user_id = :userId AND story_id = :storyId";

        Map<String, Object> params = new HashMap<>();
        params.put("userId", userId);
        params.put("storyId", storyId);

        HistoryStory historyStory = queryForObject(sql, params, HistoryStory.class);
        if(historyStory != null){
            sql = "UPDATE  reading_history SET chapter_number = :chapterNumber,  time = :current WHERE story_id = :storyId AND user_id = :userId";
        }else{
            sql = "INSERT INTO reading_history(user_id,story_id,chapter_number, time) VALUES(:userId, :storyId, :chapterNumber, :current)";
        }
        params.put("chapterNumber", chapterNumber);
        params.put("current", System.currentTimeMillis());
        executeSqlDatabase(sql, params);
        return new HistoryStory(storyId, userId, storyId, chapterNumber);
    }
    public Long getViews(Long storyId){
        String sql = "SELECT SUM(views) FROM stories_chapters WHERE story_id = :storyId";
        Map<String, Object> params = new HashMap<>();
        params.put("storyId", storyId);
        return queryForObject(sql, params, Long.class);
    }
}
