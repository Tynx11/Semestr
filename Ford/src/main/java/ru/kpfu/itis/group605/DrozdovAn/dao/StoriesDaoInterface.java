package ru.kpfu.itis.group605.DrozdovAn.dao;

import ru.kpfu.itis.group605.DrozdovAn.entites.Stories;

import java.util.List;


public interface StoriesDaoInterface {
    List getAllStories();
    Stories getStory(int id);
    List getAll(int id);
    List getTop();
}
