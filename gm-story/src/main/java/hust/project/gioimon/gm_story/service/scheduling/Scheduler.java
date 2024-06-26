package hust.project.gioimon.gm_story.service.scheduling;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class Scheduler {
    private final UpdateViewsProcessor updateViewsProcessor;
    private final UpdateChapterProcessor updateChapterProcessor;
    public void init(){
        ScheduleUpdateStory scheduleUpdateStory = new ScheduleUpdateStory(updateViewsProcessor);
        ScheduleUpdateStory scheduleUpdateChapter = new ScheduleUpdateStory(updateChapterProcessor);
        scheduleUpdateStory.start();
        scheduleUpdateChapter.start();

    }
}
