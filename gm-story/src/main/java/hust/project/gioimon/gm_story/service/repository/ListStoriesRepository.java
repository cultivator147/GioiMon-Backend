package hust.project.gioimon.gm_story.service.repository;

import hust.project.gioimon.gm_story.service.cache.ListStoryCache;
import hust.project.gioimon.gm_story.service.model.HistoryStory;
import hust.project.gioimon.gm_story.service.model.SampleStoryDTO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Slf4j
@Repository
@RequiredArgsConstructor
public class ListStoriesRepository extends BaseRepository {
    private final ChaptersRepository chaptersRepository;
    public Page<SampleStoryDTO> getFilteredListStories(long categoryId, int writingState, int page, int size, String sortBy){
        StringBuilder sqlBuilder = new StringBuilder(""" 
                       SELECT T1.ID AS ID, T1.TITLE AS TITLE, T1.LINK AS LINK, T1.PICTURE AS PICTURE, T1.CATEGORY_ID AS CATEGORY_ID, T1.LAST_UPDATE_DATE
                       FROM (
                           SELECT S.ID AS ID, S.TITLE AS TITLE, S.LINK AS LINK, S.PICTURE AS PICTURE, S.LAST_UPDATE_DATE, SC.CATEGORY_ID AS CATEGORY_ID
                           FROM stories S
                           JOIN stories_categories SC ON SC.STORY_ID = S.ID
                           WHERE (CASE WHEN :WRITING_STATE = 0 THEN :WRITING_STATE ELSE S.WRITING_STATE END) = :WRITING_STATE
                       ) T1
                       JOIN categories C ON T1.CATEGORY_ID = C.ID
                       WHERE (CASE WHEN :CATEGORY_ID = 1 THEN :CATEGORY_ID ELSE C.ID END) = :CATEGORY_ID
                       GROUP BY T1.ID, T1.TITLE, T1.LINK, T1.PICTURE, T1.CATEGORY_ID, T1.LAST_UPDATE_DATE
         """);

        Map<String, Object> params = new HashMap<>();
        params.put("CATEGORY_ID", categoryId);
        params.put("WRITING_STATE", writingState);
        Page<SampleStoryDTO> sampleStoryDTOS = getPage(sqlBuilder.toString(), params, page, size, SampleStoryDTO.class);
        sampleStoryDTOS.stream().forEach(story -> story.setChapters(chaptersRepository.getListChapters(story.getId(), 0, 3)));
        return sampleStoryDTOS;
    }
    public List<SampleStoryDTO> getSuggestedListStories(){
        //TODO: LOGIC SUGGESTION HERE
        StringBuilder sql = new StringBuilder("""
                    SELECT * FROM stories LIMIT 10
                """);
        List<SampleStoryDTO> results = getListData(sql.toString(), null, SampleStoryDTO.class);
        results.stream().forEach(story -> story.setChapters(chaptersRepository.getListChapters(story.getId(), 0, 3)));
        return results;
    }
    public List<SampleStoryDTO> getAll(){
        StringBuilder sql = new StringBuilder("""
                    SELECT * FROM stories
                """);
        List<SampleStoryDTO> results = getListData(sql.toString(), null, SampleStoryDTO.class);
        results.stream().forEach(story -> story.setChapters(chaptersRepository.getListChapters(story.getId(), 0, 3)));
        return results;
    }
    public List<SampleStoryDTO> topMonthly(){
        StringBuilder sql = new StringBuilder("""
                    SELECT *
                    FROM stories
                    JOIN (
                    SELECT stories_chapters.story_id, SUM(VIEWS) AS TOTAL_VIEWS
                    FROM stories_chapters
                    GROUP BY stories_chapters.story_id)ct ON stories.id = ct.STORY_ID
                    ORDER BY TOTAL_VIEWS DESC
                """);
        List<SampleStoryDTO> results = getListData(sql.toString(), null, SampleStoryDTO.class);
        results.stream().forEach(story -> story.setChapters(chaptersRepository.getListChapters(story.getId(), 0, 3)));
        return results;
    }
    public List<SampleStoryDTO> topDaily(){
        StringBuilder sql = new StringBuilder("""
                    SELECT *
                                        FROM stories
                                        JOIN (
                                        SELECT stories_chapters.story_id, SUM(VIEWS) AS TOTAL_VIEWS
                                        FROM stories_chapters
                                        GROUP BY stories_chapters.story_id)ct ON stories.id = ct.STORY_ID
                                        ORDER BY RAND() DESC
                """);
        List<SampleStoryDTO> results = getListData(sql.toString(), null, SampleStoryDTO.class);
        results.stream().forEach(story -> story.setChapters(chaptersRepository.getListChapters(story.getId(), 0, 3)));
        return results;
    }
    public Page<SampleStoryDTO> search(String keyword, int page, int size){
        StringBuilder sqlBuilder = new StringBuilder("""
                SELECT T1.ID AS ID, T1.TITLE AS TITLE, T1.LINK AS LINK, T1.PICTURE AS PICTURE, T1.CATEGORY_ID AS CATEGORY_ID, T1.LAST_UPDATE_DATE
                FROM (
                SELECT S.ID AS ID, S.TITLE AS TITLE, S.LINK AS LINK, S.PICTURE AS PICTURE, S.LAST_UPDATE_DATE, SC.CATEGORY_ID AS CATEGORY_ID
                FROM stories S
                """)
                .append(" JOIN stories_categories SC ON SC.STORY_ID = S.ID")
                .append(" WHERE S.title LIKE '%").append(keyword).append("%'")
                .append(" OR S.keyword LIKE '%").append(keyword).append("%' ) T1 ")
                .append(" JOIN categories C ON T1.CATEGORY_ID = C.ID")
                .append(" GROUP BY ID, TITLE, LINK, PICTURE, CATEGORY_ID, LAST_UPDATE_DATE");
        Map<String, Object> params = new HashMap<>();
        Page<SampleStoryDTO> sampleStoryDTOS = getPage(sqlBuilder.toString(), params, page, size, SampleStoryDTO.class);
        sampleStoryDTOS.stream().forEach(story -> story.setChapters(chaptersRepository.getListChapters(story.getId(), 0, 3)));
        return sampleStoryDTOS;
    }
    public Page<HistoryStory> getReadingStory(Long userId, int page, int size){
        String sqlBuilder = """
                    SELECT * FROM reading_history WHERE user_id = :userId ORDER BY time DESC
                """;
        Map<String, Object> params = new HashMap<>();
        params.put("userId", userId);
        Page<HistoryStory> paging = getPage(sqlBuilder, params, page, size, HistoryStory.class);
        List<HistoryStory> stories = paging.getContent();
        stories.forEach(story -> {
            SampleStoryDTO sample = ListStoryCache.getStoryById(story.getStoryId());
            story.setTitle(sample.getTitle());
            story.setLink(sample.getLink());
            story.setPicture(sample.getPicture());
        });
        return paging;
    }
}
