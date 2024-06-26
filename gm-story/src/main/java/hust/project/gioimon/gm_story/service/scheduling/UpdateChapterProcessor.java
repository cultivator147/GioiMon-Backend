package hust.project.gioimon.gm_story.service.scheduling;

import hust.project.gioimon.gm_story.service.cache.ListStoryCache;
import hust.project.gioimon.gm_story.service.model.SampleStoryDTO;
import hust.project.gioimon.gm_story.service.repository.ChaptersRepository;
import hust.project.gioimon.gm_story.service.repository.StoryRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UpdateChapterProcessor extends Thread implements ScheduleProcessor{
    private final ChaptersRepository storyRepository;
    private final long delayTime = 30 * 60 * 1000;

    public void updateStoryChapterQuantity() {
        System.out.println("Updating story's chapter quantity");
        for(SampleStoryDTO story : ListStoryCache.LIST_STORIES) {
            ListStoryCache.updateChapterQuantity(story.getId(), storyRepository.getQuantity(story.getId()));
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
                updateStoryChapterQuantity();
                Thread.sleep(delayTime);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
