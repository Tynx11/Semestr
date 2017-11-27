package ru.kpfu.itis.group605.DrozdovAn.services;

import ru.kpfu.itis.group605.DrozdovAn.dao.MessageDao;
import ru.kpfu.itis.group605.DrozdovAn.entites.Message;
import ru.kpfu.itis.group605.DrozdovAn.helpers.MyError;

import java.util.List;


public class MessageService implements MessageServiceInterface {

    private MessageDao messageDao = null;
    private MyError error = null;

    public MessageService() {
        this.messageDao = new MessageDao();
    }

    public void add(String forum_topic_id, String user_id, String text) {
        Message newMessage = new Message(forum_topic_id,user_id, text, "дата");
        messageDao.addMessage(newMessage);

    }


    public List<Message> getAllMessages(String topic_id){
        error = null;
        if (messageDao.getAllMessages(topic_id).equals(null)) {
            error = new MyError("messages_not_found", "messages_not_found");
            return null;
        } else {
            return messageDao.getAllMessages(topic_id);
        }
    }

}
