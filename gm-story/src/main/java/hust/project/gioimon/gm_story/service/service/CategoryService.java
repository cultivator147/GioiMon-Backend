package hust.project.gioimon.gm_story.service.service;

import hust.project.gioimon.gm_story.service.response.CategoryDTO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CategoryService {
    List<CategoryDTO> get(long storyId);
    List<CategoryDTO> getAll();
}
