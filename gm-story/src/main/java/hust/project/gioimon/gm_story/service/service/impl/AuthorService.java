package hust.project.gioimon.gm_story.service.service.impl;

import hust.project.gioimon.gm_story.service.jdbc.AuthorRepository;
import hust.project.gioimon.gm_story.service.response.AuthorDTO;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class AuthorService {
    private final AuthorRepository authorRepository;
    public List<AuthorDTO> get(long storyId){
        return authorRepository.getAuthors(storyId);
    }
}
