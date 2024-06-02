package hust.project.gioimon.gm_story.service.response;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class HistoryStory extends SampleStoryDTO{
    private Long userId;
    private Long storyId;
    private Long time;
    private Long chapterNumber;
}
