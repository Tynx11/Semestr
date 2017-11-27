package ru.kpfu.itis.group605.DrozdovAn.dao;

import ru.kpfu.itis.group605.DrozdovAn.entites.Message;

import java.util.List;


public interface MessageDaoInterface {

    List getAllMessages(String topic_id);
    void addMessage (Message message);

}
