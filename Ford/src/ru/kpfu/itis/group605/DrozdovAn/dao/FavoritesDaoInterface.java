package ru.kpfu.itis.group605.DrozdovAn.dao;

import ru.kpfu.itis.group605.DrozdovAn.entites.Favorites;

import java.util.List;


public interface FavoritesDaoInterface {

    void add(Favorites favorites);
    List getAll();
    void delete(Favorites favorites);

}
