package hust.project.gioimon.gm_post.service.service;

import hust.project.gioimon.gm_post.service.model.entity.Post;
import hust.project.gioimon.gm_post.service.repository.jpa.ListPostRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ListPostService {
    private final ListPostRepository listPostRepository;
    public List<Post> getListPost(int page, int slots){
        Pageable pageable = PageRequest.of(page, slots, Sort.by(Sort.Direction.DESC, "createTime"));
        return listPostRepository
                .findAll(pageable)
                .stream()
                .toList();
    }
}
