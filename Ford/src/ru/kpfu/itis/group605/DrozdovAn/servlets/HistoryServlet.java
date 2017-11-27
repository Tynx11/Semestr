package ru.kpfu.itis.group605.DrozdovAn.servlets;

import ru.kpfu.itis.group605.DrozdovAn.entites.User;
import ru.kpfu.itis.group605.DrozdovAn.helpers.Helper;
import ru.kpfu.itis.group605.DrozdovAn.services.Comment_storiesService;
import ru.kpfu.itis.group605.DrozdovAn.services.FavoritesService;
import ru.kpfu.itis.group605.DrozdovAn.services.StoriesService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class HistoryServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String text = request.getParameter("text");
        String id = request.getParameter("id");

        User user = (User) request.getSession().getAttribute("current_user");

        Comment_storiesService comment = new Comment_storiesService();

        comment.addComment(user.getId(), id, text);

        response.sendRedirect("/history?history=" + id);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Map<String, Object> root = new HashMap<>();
        int history = Integer.parseInt(request.getParameter("history"));

        String id = request.getParameter("id");


        StoriesService s = new StoriesService();
        Comment_storiesService comment_storiesService = new Comment_storiesService();
        FavoritesService fs = new FavoritesService();

        root.put("story",s.getStory(history));
        root.put("comments", comment_storiesService.getAllComment());


        User user = (User) request.getSession().getAttribute("current_user");


        if (user != null)
            root.put("avto", "yes");
        else
            root.put("avto", "no");



        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        Helper.render(request,response,"history.ftl",(HashMap) root);

    }

}
