package hust.project.gioimon.gm_user.service.utils;

import hust.project.gioimon.gm_user.service.constants.PostConstant;

public class Validator {
    public static boolean validateFavouritePoint(Integer point){
        return validateNull(point) && PostConstant.LOW_POINT_FAVOURITE <= point && point <= PostConstant.HIGH_POINT_FAVOURITE;
    }
    public static boolean validateNull(Object o){return o != null;}
}
