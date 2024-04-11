package hust.project.gioimon.gm_story.service.service;


import hust.project.gioimon.gm_story.service.response.ContentDTO;
import hust.project.gioimon.gm_story.service.response.DetailStoryDTO;
import hust.project.gioimon.gm_story.service.response.HistoryDTO;

public interface StoryService {
    DetailStoryDTO getDetail(int storyId);
    String getTitle(long storyId);
    ContentDTO getContent(long storyId, long chapterNumber);
    HistoryDTO logHistory(long userId, long storyId, long chapterNumber);
}
