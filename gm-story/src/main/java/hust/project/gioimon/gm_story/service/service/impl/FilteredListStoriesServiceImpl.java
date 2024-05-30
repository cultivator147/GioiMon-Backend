package hust.project.gioimon.gm_story.service.service.impl;

import hust.project.gioimon.gm_story.service.cache.ListStoryCache;
import hust.project.gioimon.gm_story.service.constant.Common;
import hust.project.gioimon.gm_story.service.jdbc.ListStoriesRepository;
import hust.project.gioimon.gm_story.service.response.SampleStoryDTO;
import hust.project.gioimon.gm_story.service.service.FilteredListStoriesService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

@Service
@Slf4j
@RequiredArgsConstructor
public class FilteredListStoriesServiceImpl implements FilteredListStoriesService {
    private final ListStoriesRepository listStoriesRepository;
    @Override
    public Page<SampleStoryDTO> getFilteredListStories(long categoryId, int writingState, String keyword, int page, int size, String sortBy) {
        System.out.println("keyword:"+ keyword);
        if(keyword.isEmpty()){
            return listStoriesRepository.getFilteredListStories(categoryId, writingState, page, size, sortBy);
        }else{
            return listStoriesRepository.search(keyword, page, size);
        }
    }

    @Override
    public List<SampleStoryDTO> getSuggestedListStories() {
        return listStoriesRepository.getSuggestedListStories();
    }

    @Override
    public Page<SampleStoryDTO> getTopStories(long categoryId, int page, int size, String sortBy) {
        return listStoriesRepository.getFilteredListStories(categoryId, 1, page, size, sortBy);
    }
    public List<SampleStoryDTO> leaderboard(String type){
        switch (type){
            case "TOP_MONTHLY":
                return getTopMonthly();
            case "TOP_WEEKLY":
                return getTopWeekly();
            case "TOP_DAILY":
                return getTopDaily();
            default:
                return new ArrayList<>();
        }
    }
    private List<SampleStoryDTO> getTopMonthly(){
        Long withinTime = System.currentTimeMillis() - Common.ONE_MONTH;
        Comparator<SampleStoryDTO> comparator = (o1, o2) -> (int) (o1.getViews() - o2.getViews());
        return ListStoryCache.LIST_STORIES.stream()
                .filter(story -> story.getLastUpdateDate() > withinTime)
                .sorted(comparator)
                .skip(0)
                .limit(10)
                .collect(Collectors.toList());
    }
    private List<SampleStoryDTO> getTopWeekly(){
        Long withinTime = System.currentTimeMillis() - Common.ONE_WEEK;
        Comparator<SampleStoryDTO> comparator = (o1, o2) -> (int) (o1.getViews() - o2.getViews());
        return ListStoryCache.LIST_STORIES.stream()
                .filter(story -> story.getLastUpdateDate() > withinTime)
                .sorted(comparator)
                .skip(0)
                .limit(10)
                .collect(Collectors.toList());
    }
    private List<SampleStoryDTO> getTopDaily(){
        Long withinTime = System.currentTimeMillis() - Common.ONE_DAY;
        Comparator<SampleStoryDTO> comparator = (o1, o2) -> (int) (o1.getViews() - o2.getViews());
        return ListStoryCache.LIST_STORIES.stream()
                .filter(story -> story.getLastUpdateDate() > withinTime)
                .sorted(comparator)
                .skip(0)
                .limit(10)
                .collect(Collectors.toList());
    }
    @Override
    public Page<SampleStoryDTO> search(String keyword, int page, int size) {
        return listStoriesRepository.search(keyword, page, size);
    }
}
