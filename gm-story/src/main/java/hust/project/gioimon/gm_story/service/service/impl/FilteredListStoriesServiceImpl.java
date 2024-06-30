package hust.project.gioimon.gm_story.service.service.impl;

import hust.project.gioimon.gm_story.client.feign_client.PostClient;
import hust.project.gioimon.gm_story.client.model.GetPostStoryRequest;
import hust.project.gioimon.gm_story.service.cache.ListStoryCache;
import hust.project.gioimon.gm_story.service.constant.Common;
import hust.project.gioimon.gm_story.service.repository.ListStoriesRepository;
import hust.project.gioimon.gm_story.service.model.HistoryStory;
import hust.project.gioimon.gm_story.service.model.SampleStoryDTO;
import hust.project.gioimon.gm_story.service.service.FilteredListStoriesService;
import hust.project.gioimon.gm_story.service.service.StoryService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;

@Service
@Slf4j
@RequiredArgsConstructor
public class FilteredListStoriesServiceImpl implements FilteredListStoriesService {
    private final StoryService storyService;
    private final ListStoriesRepository listStoriesRepository;
    private final PostClient postClient;
    @Override
    public Page<SampleStoryDTO> getFilteredListStories(long categoryId, int writingState, String keyword, int page, int size, String sortBy) {
        System.out.println("keyword:"+ keyword);
        if(keyword.isEmpty()){
                Page<SampleStoryDTO> sampleStoryDTOPage = listStoriesRepository.getFilteredListStories(categoryId, writingState, page, size, sortBy);
            Comparator<SampleStoryDTO> com = (o1, o2) -> switch (sortBy) {
                case "UPDATE_DATE" ->
                        (int) (o1.getLastUpdateDate() - o2.getLastUpdateDate());
                case "VIEWS" -> (int) (o1.getViews() - o2.getViews());
                case "CHAPTERS" ->
                        o1.getChapters().size() - o2.getChapters().size();
                default ->
                        (int) (o1.getLastUpdateDate() - o2.getLastUpdateDate());
            };
            return new Page<>() {
                @Override
                public int getTotalPages() {
                    return sampleStoryDTOPage.getTotalPages();
                }

                @Override
                public long getTotalElements() {
                    return sampleStoryDTOPage.getTotalElements();
                }

                @Override
                public <U> Page<U> map(Function<? super SampleStoryDTO, ? extends U> converter) {
                    return null;
                }

                @Override
                public int getNumber() {
                    return sampleStoryDTOPage.getNumber();
                }

                @Override
                public int getSize() {
                    return sampleStoryDTOPage.getSize();
                }

                @Override
                public int getNumberOfElements() {
                    return sampleStoryDTOPage.getNumberOfElements();
                }

                @Override
                public List<SampleStoryDTO> getContent() {
                    List<SampleStoryDTO> content = sampleStoryDTOPage.getContent().stream().sorted(com.reversed()).collect(Collectors.toList());
                    content.stream().forEach(story -> story.setChaptersQuantity(ListStoryCache.getChapterQuantity(story.getId())));
                    content.stream().forEach(story -> story.setViews(ListStoryCache.getViews(story.getId())));
                    return content;
                }

                @Override
                public boolean hasContent() {
                    return sampleStoryDTOPage.hasContent();
                }

                @Override
                public Sort getSort() {
                    return sampleStoryDTOPage.getSort();
                }

                @Override
                public boolean isFirst() {
                    return sampleStoryDTOPage.isFirst();
                }

                @Override
                public boolean isLast() {
                    return sampleStoryDTOPage.isLast();
                }

                @Override
                public boolean hasNext() {
                    return sampleStoryDTOPage.hasNext();
                }

                @Override
                public boolean hasPrevious() {
                    return sampleStoryDTOPage.hasPrevious();
                }

                @Override
                public Pageable nextPageable() {
                    return sampleStoryDTOPage.nextPageable();
                }

                @Override
                public Pageable previousPageable() {
                    return sampleStoryDTOPage.previousPageable();
                }

                @Override
                public Iterator<SampleStoryDTO> iterator() {
                    return sampleStoryDTOPage.iterator();
                }
            };
        }else{
            return listStoriesRepository.search(keyword, page, size);
        }
    }

    @Override
    public List<SampleStoryDTO> getSuggestedListStories() {
        return listStoriesRepository.getSuggestedListStories();
    }

    @Override
    public Page<HistoryStory> getReadingStory(Long userId, int page, int size) {
        return listStoriesRepository.getReadingStory(userId, page, size);
    }

    @Override
    public Page<SampleStoryDTO> getTopStories(long categoryId, int page, int size, String sortBy) {
        return listStoriesRepository.getFilteredListStories(categoryId, 1, page, size, sortBy);
    }
    public List<SampleStoryDTO> leaderboard(String type){
        return switch (type) {
            case "TOP_MONTHLY" -> getTopMonthly();
            case "TOP_WEEKLY" -> getTopWeekly();
            case "TOP_DAILY" -> getTopDaily();
            case "TOP_ALL" -> getTopAll();
            case "CHAPTERS" -> getTopChapters();
            case "VIEWS" -> getTopViews();
            case "POSTS" -> getTopPosts();
            default -> new ArrayList<>();
        };
    }

    private List<SampleStoryDTO> getTopPosts() {
        GetPostStoryRequest getPostStoryRequest = new GetPostStoryRequest();
        getPostStoryRequest.setDuration(Common.ONE_DAY);
        List<Long> topPostStoryResponse = postClient.topPostStory();
        List<SampleStoryDTO> result = new ArrayList<>();
        topPostStoryResponse.stream().forEach(sid -> result.add(ListStoryCache.getStoryById(sid)));
        return result;
    }
    private List<SampleStoryDTO> getTopViews() {
        Comparator<SampleStoryDTO> comparator = Comparator.comparingLong(SampleStoryDTO::getViews);
        return ListStoryCache.LIST_STORIES.stream()
                .sorted(comparator.reversed())
                .skip(0)
                .limit(10)
                .collect(Collectors.toList());
    }
    private List<SampleStoryDTO> getTopChapters() {
        Comparator<SampleStoryDTO> comparator = Comparator.comparingInt(o -> o.getChapters().size());
        return ListStoryCache.LIST_STORIES.stream()
                .sorted(comparator.reversed())
                .skip(0)
                .limit(10)
                .collect(Collectors.toList());
    }

    private List<SampleStoryDTO> getTopAll(){
        Comparator<SampleStoryDTO> comparator = (o1, o2) -> (int) (o1.getViews() - o2.getViews());
        return ListStoryCache.LIST_STORIES.stream()
                .sorted(comparator.reversed())
                .skip(0)
                .limit(10)
                .collect(Collectors.toList());
    }
    private List<SampleStoryDTO> getTopMonthly(){
        Long withinTime = System.currentTimeMillis() - Common.ONE_MONTH;
        Comparator<SampleStoryDTO> comparator = (o1, o2) -> (int) (o1.getViews() - o2.getViews());
        return ListStoryCache.LIST_STORIES.stream()
                .filter(story -> story.getLastUpdateDate() > withinTime)
                .sorted(comparator.reversed())
                .skip(0)
                .limit(10)
                .collect(Collectors.toList());
    }
    private List<SampleStoryDTO> getTopWeekly(){
        Long withinTime = System.currentTimeMillis() - Common.ONE_WEEK;
        Comparator<SampleStoryDTO> comparator = (o1, o2) -> (int) (o1.getViews() - o2.getViews());
        return ListStoryCache.LIST_STORIES.stream()
                .filter(story -> story.getLastUpdateDate() > withinTime)
                .sorted(comparator.reversed())
                .skip(0)
                .limit(10)
                .collect(Collectors.toList());
    }
    private List<SampleStoryDTO> getTopDaily(){
        Long withinTime = System.currentTimeMillis() - Common.ONE_DAY;
        Comparator<SampleStoryDTO> comparator = (o1, o2) -> (int) (o1.getViews() - o2.getViews());
        return ListStoryCache.LIST_STORIES.stream()
                .filter(story -> story.getLastUpdateDate() > withinTime)
                .sorted(comparator.reversed())
                .skip(0)
                .limit(10)
                .collect(Collectors.toList());
    }
    @Override
    public Page<SampleStoryDTO> search(String keyword, int page, int size) {
        return listStoriesRepository.search(keyword, page, size);
    }
}
