package hust.project.gioimon.gm_story.service.cache;

import hust.project.gioimon.gm_story.service.model.SampleStoryDTO;

import java.util.ArrayList;
import java.util.List;

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
    public static void updateChapterQuantity(Long storyId, Long chapterQuantity){
        LIST_STORIES.forEach(story -> {
            if(story.getId().equals(storyId)){
                story.setChaptersQuantity(chapterQuantity);
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
    public static SampleStoryDTO getStoryById(Long id){
        for(SampleStoryDTO story: LIST_STORIES){
            if(story.getId().equals(id)){
                return story;
            }
        }
        return null;
    }
    public static long getViews(Long id){
        for(SampleStoryDTO story: LIST_STORIES){
            if(story.getId().equals(id)){
                return story.getViews();
            }
        }
        return 0;
    }
    public static long getChapterQuantity(Long id){
        for(SampleStoryDTO story: LIST_STORIES){
            if(story.getId().equals(id)){
                return story.getChaptersQuantity();
            }
        }
        return 0;
    }

}
