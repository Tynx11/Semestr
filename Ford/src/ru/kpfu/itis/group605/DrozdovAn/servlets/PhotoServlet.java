package ru.kpfu.itis.group605.DrozdovAn.servlets;

import ru.kpfu.itis.group605.DrozdovAn.entites.User;
import ru.kpfu.itis.group605.DrozdovAn.helpers.Helper;
import ru.kpfu.itis.group605.DrozdovAn.services.PhotoService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;


public class PhotoServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Map<String, Object> root = new HashMap<>();

        PhotoService photo = new PhotoService();
        root.put("photos",photo.getAllPhoto());

        User user = (User) request.getSession().getAttribute("current_user");

        if (user != null)
            root.put("avto", "yes");
        else
            root.put("avto", "no");


        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        Helper.render(request,response,"photo.ftl",(HashMap) root);


    }

}
