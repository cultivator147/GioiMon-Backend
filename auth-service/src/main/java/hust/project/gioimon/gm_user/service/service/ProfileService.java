package hust.project.gioimon.gm_user.service.service;

import hust.project.gioimon.gm_user.service.model.entity.Profile;
import hust.project.gioimon.gm_user.service.repository.jdbc.ProfileRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class ProfileService {
    @Autowired
    private ProfileRepository profileRepository;
    public Profile get(Profile profile){
        return profileRepository.findById(profile.getUserId()).orElse(null);
    }
    public Profile update(Long userId, Profile profile){
        profile.setUserId(userId);
        return profileRepository.save(profile);
    }
}
