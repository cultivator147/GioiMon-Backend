package hust.project.gioimon.gm_post.service.repository.jpa;

import hust.project.gioimon.gm_post.service.model.entity.Post;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ListPostRepository extends JpaRepository<Post, Long> {
}
