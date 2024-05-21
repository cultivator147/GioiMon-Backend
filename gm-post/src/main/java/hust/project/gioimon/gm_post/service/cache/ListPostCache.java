package hust.project.gioimon.gm_post.service.cache;

import hust.project.gioimon.gm_post.service.model.entity.Post;
import hust.project.gioimon.gm_post.service.repository.jpa.ListPostRepository;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ListPostCache {
    @Autowired
    private ListPostRepository listPostRepository;

    private static ListPostCache instance;
    private Map<Long, Post> listPostsCache;
    private ListPostCache(){
        init();
    }
    public static ListPostCache getInstance(){
        if(instance == null){
            instance = new ListPostCache();
        }
        return instance;
    }
    private void init(){
        List<Post> listPosts = listPostRepository.findAll();
        listPosts.forEach(p -> listPostsCache.put(p.getId(), p));
    }
    public Post loadPost(Long postId){
        return listPostsCache.get(postId);
    }
    public List<Post> load(){
        List<Post> results = new ArrayList<>();
        listPostsCache.forEach((id,value) -> results.add(value));
        return results;
    }
    public void updatePost(Post p){
        this.listPostsCache.put(p.getId(), p);
    }
}
