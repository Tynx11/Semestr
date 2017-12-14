package ru.kpfu.itis.group605.DrozdovAn.helpers;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RegEx {
    public boolean IsRight(String s){
        Pattern data = Pattern.compile("(^[a-zA-Z0-9\\s]+)");
        Matcher m = data.matcher(s);
        return m.matches();
    }
    public boolean IsRightPassword(String s){
        Pattern data = Pattern.compile("(^[a-zA-Z0-9]+)");
        Matcher pass = data.matcher(s);
        return pass.matches();

    }

}
