package hust.project.gioimon.gm_story.service.scheduling;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class Scheduler {
    private final UpdateStoryProcessor updateStoryProcessor;
    public void init(){
        ScheduleUpdateStory scheduleUpdateStory = new ScheduleUpdateStory(updateStoryProcessor);
        scheduleUpdateStory.start();
    }
}
