package hust.project.gioimon.gm_story.service.cache;

import hust.project.gioimon.gm_story.service.response.SampleStoryDTO;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ListStoryCache {
    public static List<SampleStoryDTO> LIST_STORIES = new ArrayList<>();

    public static void setListStories(List<SampleStoryDTO> listStories){
        LIST_STORIES = listStories;
    }
    public static void updateViews(Long storyId, Long views){
        LIST_STORIES.forEach(story -> {
            if(story.getId().equals(storyId)){
                story.setViews(views);
            }
        });
    }
    public static void updateStory(SampleStoryDTO story){
        LIST_STORIES.removeIf(s -> s.getId().equals(story.getId()));
        LIST_STORIES.add(story);
    }
    public static void addStory(SampleStoryDTO story){
        LIST_STORIES.add(story);
    }
    public static void removeStory(Long id){
        LIST_STORIES.removeIf(story -> story.getId().equals(id));
    }
    public static void clear(){
        LIST_STORIES.clear();
    }
    public static SampleStoryDTO getStory(int index){
        return LIST_STORIES.get(index);
    }
    public static int size(){
        return LIST_STORIES.size();
    }

}
