package ru.kpfu.itis.group605.DrozdovAn.services;

import java.util.List;


public interface MessageServiceInterface {

    List getAllMessages(String topic_id);
    void add(String forum_topic_id, String user_id , String text);

}
