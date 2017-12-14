package ru.kpfu.itis.group605.DrozdovAn.helpers;

import ru.kpfu.itis.group605.DrozdovAn.entites.User;
import ru.kpfu.itis.group605.DrozdovAn.services.TokenService;
import ru.kpfu.itis.group605.DrozdovAn.services.TokenServiceInterface;
import ru.kpfu.itis.group605.DrozdovAn.services.UserService;
import ru.kpfu.itis.group605.DrozdovAn.services.UserServiceInterface;

import javax.servlet.ServletRequest;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

public class CookieToSession {
    public static User add(ServletRequest req){
        Cookie[] cookies = ((HttpServletRequest) req).getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("current_user")) {

                    TokenServiceInterface tokenService = new TokenService();
                    String id = tokenService.findToken(cookie.getValue());
                    UserServiceInterface userService = new UserService();
                    return userService.findId(id);

                }
            }
        }
        return null;
    }

}
