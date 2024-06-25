package hust.project.gioimon.gm_story.service.scheduling;

import hust.project.gioimon.gm_story.service.cache.ListStoryCache;
import hust.project.gioimon.gm_story.service.repository.StoryRepository;
import hust.project.gioimon.gm_story.service.model.SampleStoryDTO;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UpdateStoryProcessor extends Thread implements ScheduleProcessor {
    private final StoryRepository storyRepository;
    private final long delayTime = 30 * 60 * 1000;

    public void updateStoryViews() {
        System.out.println("Updating story");
        for(SampleStoryDTO story : ListStoryCache.LIST_STORIES) {
            ListStoryCache.updateViews(story.getId(), story.getViews());
        }
    }

    @Override
    public void process() {
        start();
    }

    @Override
    public void run() {
        while (true) {
            try {
                updateStoryViews();
                Thread.sleep(delayTime);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
