package ru.kpfu.itis.group605.DrozdovAn.servlets;

import ru.kpfu.itis.group605.DrozdovAn.entites.User;
import ru.kpfu.itis.group605.DrozdovAn.helpers.Helper;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class AdminServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        User user = (User) request.getSession().getAttribute("current_user");

        if (!user.getIs_admin())
            response.sendRedirect("/home");

        Map<String, Object> root = new HashMap<>();

        root.put("err", request.getParameter("err"));
        root.put("login", request.getParameter("login"));

        List<String> tables = new ArrayList<>();
        tables.add("users");
        tables.add("comment_stories");
        tables.add("cookies");
        tables.add("favorites");
        tables.add("forum_topic");
        tables.add("message");
        tables.add("photos");
        tables.add("stories");


        root.put("tables",tables);

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        Helper.render(request,response,"admin.ftl",(HashMap) root);

    }

}
