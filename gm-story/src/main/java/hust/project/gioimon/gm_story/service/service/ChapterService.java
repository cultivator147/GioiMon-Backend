package hust.project.gioimon.gm_story.service.service;


import hust.project.gioimon.gm_story.service.model.ChapterDTO;
import org.springframework.data.domain.Page;

import java.util.List;

public interface ChapterService {
    Page<ChapterDTO> getPaginationChapters(long storyId, int page, int size);
    List<ChapterDTO> getAll(long storyId);
    String[] getImages(long storyId, long chapterNumber);
    long getQuantity(long storyId);
    void plusView(long storyId, long chapterNumber);
}
