package hust.project.gioimon.gm_story.service.service;


import hust.project.gioimon.gm_story.service.response.HistoryStory;
import hust.project.gioimon.gm_story.service.response.SampleStoryDTO;
import org.springframework.data.domain.Page;

import java.util.List;

public interface FilteredListStoriesService {
    Page<SampleStoryDTO> getFilteredListStories(long categoryId, int writingState, String keyword, int page, int size, String sortBy);
    List<SampleStoryDTO> getSuggestedListStories();
    Page<HistoryStory> getReadingStory(Long userId, int page, int size);
    Page<SampleStoryDTO> getTopStories(long categoryId, int page, int size, String sortBy);
     List<SampleStoryDTO> leaderboard(String type);
    Page<SampleStoryDTO> search(String keyword,int page, int size);


}
