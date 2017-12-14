package ru.kpfu.itis.group605.DrozdovAn.dao;

import ru.kpfu.itis.group605.DrozdovAn.entites.Comment_stories;

import java.util.List;


public interface Comment_storiesDaoInterface {
    List getAllComment();
    void addComment(Comment_stories comment_stories);
}
