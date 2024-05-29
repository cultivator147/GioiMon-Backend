package hust.project.gioimon.gm_story;

import hust.project.gioimon.gm_story.service.cache.ListStoryCache;
import hust.project.gioimon.gm_story.service.jdbc.ListStoriesRepository;
import hust.project.gioimon.gm_story.service.response.SampleStoryDTO;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@RequiredArgsConstructor
public class InitListStory {
    private final  ListStoriesRepository listStoriesRepository;

    public void init(){
        List<SampleStoryDTO> stories = listStoriesRepository.getAll();
        stories.forEach(ListStoryCache::addStory);
        System.out.println("Init List Story success fully!, stories size: "+ListStoryCache.size());
    }

}
