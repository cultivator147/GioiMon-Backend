package hust.project.gioimon.gm_story.service.cache;

import hust.project.gioimon.gm_story.service.response.SampleStoryDTO;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ListStoryCache {
    private static ListStoryCache instance;
    private ListStoryCache(){

    }
    private static final Map<Long, SampleStoryDTO> listStoryCache = new HashMap<>();
    public List<SampleStoryDTO> LIST_STORIES = new ArrayList<>();
    public static ListStoryCache getInstance(){
        if(instance == null){
            instance = new ListStoryCache();
        }
        return instance;
    }
    public List<SampleStoryDTO> getListStoryCache(){
        return new ArrayList<>(listStoryCache.values());
    }
    public static void addStory(SampleStoryDTO story){
        listStoryCache.put(story.getId(), story);
    }
    public static SampleStoryDTO getStory(long id){
        return listStoryCache.get(id);
    }
    public  static void removeStory(long id){
        listStoryCache.remove(id);
    }
    public static void clear(){
        listStoryCache.clear();
    }
    public static void updateStory(SampleStoryDTO story){
        listStoryCache.put(story.getId(), story);
    }
    public static boolean contains(long id){
        return listStoryCache.containsKey(id);
    }
    public static int size(){
        return listStoryCache.size();
    }

}
