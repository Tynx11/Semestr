package ru.kpfu.itis.group605.DrozdovAn.services;

import ru.kpfu.itis.group605.DrozdovAn.dao.FavoritesDao;
import ru.kpfu.itis.group605.DrozdovAn.entites.Favorites;
import ru.kpfu.itis.group605.DrozdovAn.helpers.MyError;

import java.util.ArrayList;
import java.util.List;


public class FavoritesService {

    private FavoritesDao favoritesDao = null;
    private MyError error = null;

    public FavoritesService() {
        this.favoritesDao = new FavoritesDao();
    }

    public void add(String user_id, String story_id) {
        Favorites newF = new Favorites(user_id, story_id);
        favoritesDao.add(newF);
    }

    public List<Favorites> getAll(){
        error = null;
        if (favoritesDao.getAll().equals(null)) {
            error = new MyError("favorites_not_found", "favorites not found");
            return null;
        } else {
            return favoritesDao.getAll();
        }
    }



    public void delete(String user_id, String story_id) {
        error = null;
        Favorites newF = new Favorites(user_id, story_id);
        favoritesDao.delete(newF);
    }

}
