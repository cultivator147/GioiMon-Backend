package hust.project.gioimon.gm_story;

import hust.project.gioimon.gm_story.service.cache.ListStoryCache;
import hust.project.gioimon.gm_story.service.jdbc.ListStoriesRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;


@Service
@RequiredArgsConstructor
public class InitListStory {
    private final  ListStoriesRepository listStoriesRepository;

    public void init(){
        ListStoryCache.setListStories(listStoriesRepository.getAll());
        System.out.println("Init List Story success fully!, stories size: "+ListStoryCache.size());
    }

}
