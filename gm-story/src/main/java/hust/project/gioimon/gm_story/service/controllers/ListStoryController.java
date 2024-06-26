package hust.project.gioimon.gm_story.service.controllers;

import hust.project.gioimon.gm_story.client.model.ResponseData;
import hust.project.gioimon.gm_story.service.constant.FilterConstants;
import hust.project.gioimon.gm_story.service.model.HistoryStory;
import hust.project.gioimon.gm_story.service.model.SampleStoryDTO;
import hust.project.gioimon.gm_story.service.service.FilteredListStoriesService;
import hust.project.gioimon.gm_story.service.utils.BaseResponse;
import hust.project.gioimon.gm_story.service.utils.token.TokenUtil;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/v1.0/")
@Slf4j
@RequiredArgsConstructor
public class ListStoryController {
    private final FilteredListStoriesService filteredListStoriesService;

    @GetMapping("/filtered-list-story")
    public ResponseEntity<ResponseData<Page<SampleStoryDTO>>> getFilteredListStories(
            @RequestParam(defaultValue = "0", name = "category_id") long categoryId,
            @RequestParam(defaultValue = "0", name = "writing_state") int writingState,
            @RequestParam(defaultValue = "", name = "keyword") String keyword,
            @RequestParam(required = false, defaultValue = "0") int page,
            @RequestParam(required = false, defaultValue = "10") int size,
            @RequestParam(defaultValue = FilterConstants.SORT_BY_UPDATE_DATE, name = "sort_by") String sortBy
    ) {
        return BaseResponse.success(filteredListStoriesService.getFilteredListStories(categoryId, writingState,keyword, page, size, sortBy));
    }

    @GetMapping("/suggested-list-stories")
    public ResponseEntity<ResponseData<List<SampleStoryDTO>>> getSuggestedListStories(
    ) {
        return BaseResponse.success(filteredListStoriesService.getSuggestedListStories());
    }
    @GetMapping("/reading-history")
    public ResponseEntity<ResponseData<List<SampleStoryDTO>>> getReadingHistory(
    ) {
        return BaseResponse.success(filteredListStoriesService.getSuggestedListStories());
    }
    @GetMapping("/reading-story")
    public ResponseEntity<ResponseData<Page<HistoryStory>>> getReadingStory(
            HttpServletRequest request,
            @RequestParam(required = false, defaultValue = "0") int page,
            @RequestParam(required = false, defaultValue = "5") int size
    ) {
        Long userId = TokenUtil.getUserIdFromRequest(request);
        return BaseResponse.success(filteredListStoriesService.getReadingStory(userId, page, size));
    }
    @GetMapping("/top-stories")
    public ResponseEntity<ResponseData<Page<SampleStoryDTO>>> getTopStories(
            @RequestParam(defaultValue = "0") long categoryId,
            @RequestParam(required = false, defaultValue = "0") int page,
            @RequestParam(required = false, defaultValue = "20") int size,
            @RequestParam(defaultValue = FilterConstants.SORT_BY_MONTH) String orderBy
    ) {
        return BaseResponse.success(filteredListStoriesService.getTopStories(categoryId, page, size, orderBy));
    }
    @GetMapping("/leaderboard")
    public ResponseEntity<ResponseData<List<SampleStoryDTO>>> getLeaderboard(
            @RequestParam(name = "type") String type
    ) {
        return BaseResponse.success(filteredListStoriesService.leaderboard(type));
    }
    @GetMapping("/search")
    public ResponseEntity<ResponseData<Page<SampleStoryDTO>>> search(
            @RequestParam(name = "keyword") String keywork,
            @RequestParam(required = false, defaultValue = "0") int page,
            @RequestParam(required = false, defaultValue = "10") int size
    ) {
        return BaseResponse.success(filteredListStoriesService.search(keywork, page, size));
    }
}
