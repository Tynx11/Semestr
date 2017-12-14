package ru.kpfu.itis.group605.DrozdovAn.services;

import java.util.List;


public interface ForumServiceInterface {

    List getAllTopics();
    void add(String name, String user_id);

}
