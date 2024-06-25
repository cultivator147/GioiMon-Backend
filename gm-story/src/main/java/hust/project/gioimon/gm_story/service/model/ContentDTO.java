package hust.project.gioimon.gm_story.service.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ContentDTO {
    private String title;
    private String chapterName;
    private String[] images;
    private long chapterQuantity;
    private List<ChapterDTO> chapters;
}
