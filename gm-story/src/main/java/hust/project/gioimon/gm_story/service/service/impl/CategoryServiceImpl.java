package hust.project.gioimon.gm_story.service.service.impl;

import hust.project.gioimon.gm_story.service.repository.CategoryRepository;
import hust.project.gioimon.gm_story.service.model.CategoryDTO;
import hust.project.gioimon.gm_story.service.service.CategoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
@RequiredArgsConstructor
@Service
public class CategoryServiceImpl implements CategoryService {
    private final CategoryRepository categoryRepository;
    @Override
    public List<CategoryDTO> get(long storyId) {
        return categoryRepository.getCategory(storyId);
    }

    @Override
    public List<CategoryDTO> getAll() {
        return categoryRepository.getAll();
    }
}
