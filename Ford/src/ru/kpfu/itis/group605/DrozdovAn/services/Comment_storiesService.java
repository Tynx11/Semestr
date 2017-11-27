package ru.kpfu.itis.group605.DrozdovAn.services;

import ru.kpfu.itis.group605.DrozdovAn.dao.Comment_storiesDao;
import ru.kpfu.itis.group605.DrozdovAn.entites.Comment_stories;
import ru.kpfu.itis.group605.DrozdovAn.helpers.MyError;

import java.util.List;


public class Comment_storiesService implements Comment_storiesServiceInterface{

    private Comment_storiesDao commentDao = null;
    private MyError error = null;

    public Comment_storiesService() {
        this.commentDao = new Comment_storiesDao();
    }

    public List<Comment_stories> getAllComment(){
        error = null;
        if (commentDao.getAllComment().equals(null)) {
            error = new MyError("comment_not_found", "Comment not found");
            return null;
        } else {
            return commentDao.getAllComment();
        }
    }

    public void addComment(String user_id, String story_id, String text) {
        Comment_stories newComment = new Comment_stories(user_id, story_id, text, "дата");
        commentDao.addComment(newComment);

    }

}
