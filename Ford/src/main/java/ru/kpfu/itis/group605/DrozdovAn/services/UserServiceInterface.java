package ru.kpfu.itis.group605.DrozdovAn.services;

import ru.kpfu.itis.group605.DrozdovAn.entites.User;
import ru.kpfu.itis.group605.DrozdovAn.helpers.MyError;

import java.util.List;

public interface UserServiceInterface {


    void add(String name, String login, String password,String passwordAgain, String email, String town, String about);
    void delete(String id);
    User find(String login) ;
    User findId(String id) ;
    MyError getError();
    List getAllUsers();
    List getSearchUsers(String text);

}