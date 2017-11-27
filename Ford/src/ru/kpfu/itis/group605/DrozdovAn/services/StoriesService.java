package ru.kpfu.itis.group605.DrozdovAn.services;

import ru.kpfu.itis.group605.DrozdovAn.dao.StoriesDao;
import ru.kpfu.itis.group605.DrozdovAn.entites.Stories;
import ru.kpfu.itis.group605.DrozdovAn.helpers.MyError;

import java.util.List;

public class StoriesService implements StoriesServiceInterface {

    private StoriesDao storiesDao = null;
    private MyError error = null;

    public StoriesService() {
        this.storiesDao = new StoriesDao();
    }

    public List<Stories> getAllStories(){
        error = null;
        if (storiesDao.getAllStories().equals(null)) {
            error = new MyError("Story_not_found", "Story_not_found");
            return null;
        } else {
            return storiesDao.getAllStories();
        }
    }

    public Stories getStory(int id){
        error = null;
        if (storiesDao.getStory(id).equals(null)) {
            error = new MyError("Story_not_found", "Story_not_found");
            return null;
        } else {
            return storiesDao.getStory(id);
        }
    }

    public List<Stories> getAll(int id_user){
        error = null;
        if (storiesDao.getAll(id_user).equals(null)) {
            error = new MyError("Story_not_found", "Story_not_found");
            return null;
        } else {
            return storiesDao.getAll(id_user);
        }
    }

    public List<Stories> getTop(){
        error = null;
        if (storiesDao.getTop().equals(null)) {
            error = new MyError("Story_not_found", "Story_not_found");
            return null;
        } else {
            return storiesDao.getTop();
        }
    }

}
