package hust.project.gioimon.gm_story.service.controllers;

import hust.project.gioimon.gm_story.client.model.ResponseData;
import hust.project.gioimon.gm_story.service.response.CategoryDTO;
import hust.project.gioimon.gm_story.service.service.CategoryService;
import hust.project.gioimon.gm_story.service.utils.BaseResponse;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/v1.0/category")
@Slf4j
@RequiredArgsConstructor
public class CategoryController {
    private final CategoryService categoryService;
    @GetMapping()
    public ResponseEntity<ResponseData<List<CategoryDTO>>> getAll(

    ) {
        return BaseResponse.success(categoryService.getAll());
    }
}
