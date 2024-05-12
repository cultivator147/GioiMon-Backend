package hust.project.gioimon.gm_post.service.repository.jpa;

import hust.project.gioimon.gm_post.service.model.entity.CommentCompositeKey;
import hust.project.gioimon.gm_post.service.model.entity.PostComment;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PostCommentRepository extends CrudRepository<PostComment, CommentCompositeKey> {
    @Query(value = "SELECT * FROM post_comment WHERE post_id = :postId", nativeQuery = true)
    List<PostComment> getListComment(long postId);
    @Query(value = "SELECT COUNT(*) FROM post_comment WHERE post_id = :postId", nativeQuery = true)
    Long getCommentCount(long postId);
}
