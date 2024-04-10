package hust.project.gioimon.gm_user.service.service;

import hust.project.gioimon.gm_user.client.check_permission.CheckPermissionDTO;
import org.springframework.stereotype.Service;

@Service
public class GlobalService {
    public CheckPermissionDTO checkPermission(String token, String uri){
        return new CheckPermissionDTO(true);
    }
}
