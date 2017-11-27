package ru.kpfu.itis.group605.DrozdovAn.servlets;

import ru.kpfu.itis.group605.DrozdovAn.dao.UserDao;
import ru.kpfu.itis.group605.DrozdovAn.entites.User;
import ru.kpfu.itis.group605.DrozdovAn.helpers.Helper;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;


public class ProfileServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        UserDao x = new UserDao();

        User user = (User) request.getSession().getAttribute("current_user");
        user = x.findUser(user.getLogin());
        request.getSession().setAttribute("current_user",user);


        Map<String, Object> root = new HashMap<>();

        root.put("login",user.getLogin());
        root.put("name",user.getName());
        root.put("email",user.getEmail());
        root.put("town",user.getTown());
        root.put("about",user.getAbout());

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        Helper.render(request,response,"profile.ftl",(HashMap) root);

    }
}
