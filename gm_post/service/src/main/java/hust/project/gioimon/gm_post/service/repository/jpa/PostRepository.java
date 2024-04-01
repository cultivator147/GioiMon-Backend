package hust.project.gioimon.gm_post.service.repository.jpa;

import hust.project.gioimon.gm_post.service.model.entity.Post;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PostRepository extends CrudRepository<Post, Long> {

}
