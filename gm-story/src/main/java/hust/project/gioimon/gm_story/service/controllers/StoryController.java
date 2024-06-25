package hust.project.gioimon.gm_story.service.controllers;

import hust.project.gioimon.gm_story.client.model.ResponseData;
import hust.project.gioimon.gm_story.service.model.ContentDTO;
import hust.project.gioimon.gm_story.service.model.DetailStoryDTO;
import hust.project.gioimon.gm_story.service.model.HistoryDTO;
import hust.project.gioimon.gm_story.service.model.HistoryStory;
import hust.project.gioimon.gm_story.service.service.StoryService;
import hust.project.gioimon.gm_story.service.utils.BaseResponse;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/v1.0/story/")
@Slf4j
@RequiredArgsConstructor
public class StoryController {
    private final StoryService storyService;
    @GetMapping("/detail")
    public ResponseEntity<ResponseData<DetailStoryDTO>> getDetail(@RequestParam("story_id") int storyId){
        return BaseResponse.success(storyService.getDetail(storyId));
    }
    @GetMapping("/content")
    public ResponseEntity<ResponseData<ContentDTO>> getContent(@RequestParam long story_id, @RequestParam long chapter_number){
        return BaseResponse.success(storyService.getContent(story_id, chapter_number));
    }
    @PostMapping("/history")
    public ResponseEntity<ResponseData<HistoryStory>> logHistory(@RequestHeader(name = "user_id")long userId, @RequestHeader(name = "Authorization")String token, @RequestBody HistoryDTO historyDTO){
        return BaseResponse.success(storyService.logHistory(userId, historyDTO.getStory_id(), historyDTO.getChapter_number()));
    }
}
