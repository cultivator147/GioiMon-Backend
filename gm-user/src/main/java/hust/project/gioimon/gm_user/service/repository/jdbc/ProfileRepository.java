package hust.project.gioimon.gm_user.service.repository.jdbc;

import hust.project.gioimon.gm_user.service.model.entity.Profile;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProfileRepository extends CrudRepository<Profile, Long> {

}
