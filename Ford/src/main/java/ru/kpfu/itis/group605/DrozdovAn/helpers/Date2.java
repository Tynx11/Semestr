package ru.kpfu.itis.group605.DrozdovAn.helpers;

import java.util.Date;

import java.text.DateFormat;

import java.text.SimpleDateFormat;


public class Date2 {

    public String getDateTime() {

        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");

        Date date = new Date();

        return dateFormat.format(date);

    }

}
