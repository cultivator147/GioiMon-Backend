package hust.project.gioimon.gm_story.service.service;


import hust.project.gioimon.gm_story.service.model.HistoryStory;
import hust.project.gioimon.gm_story.service.model.SampleStoryDTO;
import org.springframework.data.domain.Page;

import java.util.List;

public interface FilteredListStoriesService {
    Page<SampleStoryDTO> getFilteredListStories(Long userId, long categoryId, int writingState, String keyword, int page, int size, String sortBy);
    List<SampleStoryDTO> getSuggestedListStories();
    Page<HistoryStory> getReadingStory(Long userId, int page, int size);
    Page<SampleStoryDTO> getTopStories(long categoryId, int page, int size, String sortBy);
     List<SampleStoryDTO> leaderboard(String type);
    Page<SampleStoryDTO> search(String keyword,int page, int size);


}
