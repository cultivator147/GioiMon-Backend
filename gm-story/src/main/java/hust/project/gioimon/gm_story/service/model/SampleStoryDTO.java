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
public class SampleStoryDTO {
    private Long id;
    private String title;
    private String link;
    private String picture;
    private Long lastUpdateDate;
    private long views;
    private long comments;
    private long loves;
    private List<ChapterDTO> chapters;
    private Long chaptersQuantity;
}
