package ru.kpfu.itis.group605.DrozdovAn.services;

import ru.kpfu.itis.group605.DrozdovAn.dao.ForumDao;
import ru.kpfu.itis.group605.DrozdovAn.entites.Forum_topic;
import ru.kpfu.itis.group605.DrozdovAn.helpers.MyError;
import ru.kpfu.itis.group605.DrozdovAn.helpers.RegEx;

import java.util.List;


public class ForumService implements ForumServiceInterface {

    private ForumDao forumDao = null;
    private MyError error = null;
    public RegEx regEx = new RegEx();
    public ForumService() {
        this.forumDao = new ForumDao();
    }

    public List<Forum_topic> getAllTopics(){
        error = null;
        if (forumDao.getAllTopics().equals(null)) {
            error = new MyError("topics_not_found", "topics_not_found");
            return null;
        } else {
            return forumDao.getAllTopics();
        }
    }

    public void add(String name, String user_id) {
        error = null;
        if (regEx.IsRight(name)) {
            Forum_topic newForum_topic = new Forum_topic(name, user_id, "дата");
            forumDao.addTopic(newForum_topic);

        }
        else {
            error = new MyError("wrong_name", "name should be on EN");
        }


    }
    public MyError getError(){
        return error;
    }


}
