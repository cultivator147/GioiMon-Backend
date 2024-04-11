package hust.project.gioimon.gm_post.service.repository.jpa;

import hust.project.gioimon.gm_post.service.model.entity.PostFavCompositeKey;
import hust.project.gioimon.gm_post.service.model.entity.PostFavourite;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PostFavRepository extends CrudRepository<PostFavourite, PostFavCompositeKey> {
    @Query(value = "SELECT COUNT(*) FROM post_favourite WHERE post_id = :postId AND favourite = 1", nativeQuery = true)
    long calculateFavCount(long postId);
    @Query(value = "SELECT (SUM(favourite_point) / COUNT(*)) FROM post_favourite WHERE post_id = :postId", nativeQuery = true)
    double getTotalPoint(long postId);
    @Query(value = "UPDATE post_favourite pf SET pf.favourite = 1, pf.favourite_point = :point WHERE pf.post_id = :postId AND pf.user_id = :userId",nativeQuery = true)
    @Transactional
    @Modifying
    void favourite(long postId, long userId, int point);
    @Query(value = "UPDATE post_favourite pf SET pf.favourite = 0 WHERE pf.post_id = :postId AND pf.user_id = :userId",nativeQuery = true)
    @Transactional
    @Modifying
    void unFavourite(long postId, long userId);
}
