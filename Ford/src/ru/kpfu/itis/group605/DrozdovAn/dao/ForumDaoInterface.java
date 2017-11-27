package ru.kpfu.itis.group605.DrozdovAn.dao;

import ru.kpfu.itis.group605.DrozdovAn.entites.Forum_topic;

import java.util.List;


public interface ForumDaoInterface {

    List getAllTopics();
    void addTopic(Forum_topic forum_topic);

}
