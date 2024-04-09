package hust.project.gioimon.gm_post.service.utils;

import hust.project.gioimon.gm_post.service.constants.PostConstant;

public class Validation {
    public static boolean validateFavouritePoint(Integer point){
        return validateNull(point) && PostConstant.LOW_POINT_FAVOURITE <= point && point <= PostConstant.HIGH_POINT_FAVOURITE;
    }
    public static boolean validateNull(Object o){return o != null;}
}
