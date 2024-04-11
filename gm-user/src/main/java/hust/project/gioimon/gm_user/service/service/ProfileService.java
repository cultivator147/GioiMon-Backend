package hust.project.gioimon.gm_user.service.service;

import hust.project.gioimon.gm_user.service.model.dto.request.Profile;
import hust.project.gioimon.gm_user.service.repository.jdbc.ProfileRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class ProfileService {
    @Autowired
    private ProfileRepository profileRepository;
    public Profile getProfile(long userId){
        return profileRepository.getProfile(userId);
    }
}
