package hust.project.gioimon.gm_user.service.repository.jpa;

import hust.project.gioimon.gm_user.service.model.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserInfoRepository extends JpaRepository<User, Long> {

}
