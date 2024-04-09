package hust.project.gioimon.gm_post.service.repository.jpa;

import hust.project.gioimon.gm_post.service.model.entity.Post;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PostRepository extends CrudRepository<Post, Long> {
    @Transactional
    @Modifying
    @Query("UPDATE Post p SET p.favouriteCount = :favCount, p.averageFavouritePoint = :fav WHERE p.id = :postId")
    void updatePostInteraction(long postId, double fav, double favCount);
}
