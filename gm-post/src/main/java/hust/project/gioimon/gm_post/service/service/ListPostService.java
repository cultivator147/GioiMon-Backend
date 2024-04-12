package hust.project.gioimon.gm_post.service.service;

import hust.project.gioimon.gm_post.client.feign_client.UserClient;
import hust.project.gioimon.gm_post.service.model.dto.response.PostResponseDTO;
import hust.project.gioimon.gm_post.service.model.entity.Post;
import hust.project.gioimon.gm_post.service.model.entity.Profile;
import hust.project.gioimon.gm_post.service.repository.jpa.ListPostRepository;
import hust.project.gioimon.gm_post.service.utils.Validator;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class ListPostService {
    private final ListPostRepository listPostRepository;
    private final UserClient userClient;
    public List<Post> getListPost(int page, int slots){
        Pageable pageable = PageRequest.of(page, slots, Sort.by(Sort.Direction.DESC, "createTime"));
        List<Post> listPostEntity = listPostRepository
                .findAll(pageable)
                .stream().toList();
        listPostEntity.forEach(this::setOwnerInformation);
        return listPostEntity;
    }
    private void setOwnerInformation(Post post){
        Profile p = userClient.getProfile(new Profile(post.getOwnerId())).getData();
        if(!Validator.validateNull(p)){
            return;
        }
        if(Validator.validateNull(p.getAvatar())){
            post.setOwnerAvatar(p.getAvatar());
        }
        if(Validator.validateNull(p.getNickname())){
            post.setOwnerNickname(p.getNickname());
        }
    }
}
