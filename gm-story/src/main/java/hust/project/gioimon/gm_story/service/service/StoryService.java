package hust.project.gioimon.gm_story.service.service;


import hust.project.gioimon.gm_story.service.model.ContentDTO;
import hust.project.gioimon.gm_story.service.model.DetailStoryDTO;
import hust.project.gioimon.gm_story.service.model.HistoryStory;

public interface StoryService {
    DetailStoryDTO getDetail(int storyId);
    String getTitle(long storyId);
    ContentDTO getContent(long storyId, long chapterNumber);
    HistoryStory logHistory(long userId, long storyId, long chapterNumber);
}
