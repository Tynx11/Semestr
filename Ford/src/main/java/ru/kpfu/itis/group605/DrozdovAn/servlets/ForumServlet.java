package ru.kpfu.itis.group605.DrozdovAn.servlets;

import ru.kpfu.itis.group605.DrozdovAn.entites.User;
import ru.kpfu.itis.group605.DrozdovAn.helpers.Helper;
import ru.kpfu.itis.group605.DrozdovAn.helpers.RegEx;
import ru.kpfu.itis.group605.DrozdovAn.services.ForumService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;


public class ForumServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("name");

        User user = (User) request.getSession().getAttribute("current_user");
        ForumService fs = new ForumService();


        if (fs.regEx.IsRight(name) == true) {

            fs.add(name, user.getId());

            response.sendRedirect("/forum");
        }
        else{
            fs.add(name, user.getId());
            response.sendRedirect("/forum?err="+fs.getError().getMessage());
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Map<String, Object> root = new HashMap<>();

        ForumService fs = new ForumService();
        root.put("err", request.getParameter("err"));
        root.put("topics",fs.getAllTopics());

        User user = (User) request.getSession().getAttribute("current_user");

        if (user != null)
            root.put("avto", "yes");
        else
            root.put("avto", "no");

        request.setCharacterEncoding("UTF-8");
        response.setContentType ("text/html; charset=UTF-8");

        Helper.render(request,response,"forum.ftl",(HashMap) root);


    }

}
