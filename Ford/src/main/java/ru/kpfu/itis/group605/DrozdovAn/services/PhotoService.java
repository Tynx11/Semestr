package ru.kpfu.itis.group605.DrozdovAn.services;

import ru.kpfu.itis.group605.DrozdovAn.dao.PhotoDao;
import ru.kpfu.itis.group605.DrozdovAn.entites.Photos;
import ru.kpfu.itis.group605.DrozdovAn.helpers.MyError;

import java.util.List;


public class PhotoService {

    private PhotoDao photoDao = null;
    private MyError error = null;

    public PhotoService() { this.photoDao = new PhotoDao(); }

    public List<Photos> getAllPhoto(){
        error = null;
        if (photoDao.getAllPhoto().equals(null)) {
            error = new MyError("photos_not_found", "photos_not_found");
            return null;
        } else {
            return photoDao.getAllPhoto();
        }
    }

}
