package hust.project.gioimon.gm_story.service.service;


import hust.project.gioimon.gm_story.service.response.ContentDTO;
import hust.project.gioimon.gm_story.service.response.DetailStoryDTO;
import hust.project.gioimon.gm_story.service.response.HistoryDTO;
import hust.project.gioimon.gm_story.service.response.HistoryStory;

public interface StoryService {
    DetailStoryDTO getDetail(int storyId);
    String getTitle(long storyId);
    ContentDTO getContent(long storyId, long chapterNumber);
    HistoryStory logHistory(long userId, long storyId, long chapterNumber);
}
