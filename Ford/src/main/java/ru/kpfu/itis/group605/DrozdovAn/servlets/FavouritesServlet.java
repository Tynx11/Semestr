package ru.kpfu.itis.group605.DrozdovAn.servlets;

import ru.kpfu.itis.group605.DrozdovAn.entites.User;
import ru.kpfu.itis.group605.DrozdovAn.helpers.Helper;
import ru.kpfu.itis.group605.DrozdovAn.services.FavoritesService;
import ru.kpfu.itis.group605.DrozdovAn.services.StoriesService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;


public class FavouritesServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String par = request.getParameter("par");
        String id = request.getParameter("id");

        User user = (User) request.getSession().getAttribute("current_user");

        if (par.equals("add")){
            FavoritesService fs = new FavoritesService();
            fs.add(user.getId(),id);
            response.sendRedirect("/history?history=" + id);
        }

        if (par.equals("delete")){
            FavoritesService fs = new FavoritesService();
            fs.delete(user.getId(),id);
            response.sendRedirect("/favourites");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Map<String, Object> root = new HashMap<>();

        StoriesService ss = new StoriesService();

        User user = (User) request.getSession().getAttribute("current_user");

        root.put("favourites", ss.getAll(Integer.parseInt(user.getId())));

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        Helper.render(request,response,"favorites.ftl",(HashMap) root);

    }

}
