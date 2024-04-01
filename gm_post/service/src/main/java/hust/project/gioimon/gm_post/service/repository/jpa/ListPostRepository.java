package hust.project.gioimon.gm_post.service.repository.jpa;

import hust.project.gioimon.gm_post.service.model.entity.Post;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface ListPostRepository extends PagingAndSortingRepository<Post, Long> {
    Page<Post> findAll(Pageable pageable);
}
