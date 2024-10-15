package hust.project.gioimon.gm_user.service.converter;

public interface IConverter {
    <R, E> R toDTO(E entity);
}
