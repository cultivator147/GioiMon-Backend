package hust.project.gioimon.gm_story.service.controllers;

import hust.project.gioimon.gm_story.service.service.ChapterService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/v1.0/chapter/")
@Slf4j
@RequiredArgsConstructor
public class ChapterController {
    private final ChapterService chapterService;

}
