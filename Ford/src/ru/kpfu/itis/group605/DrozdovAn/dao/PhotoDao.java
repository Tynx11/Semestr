package ru.kpfu.itis.group605.DrozdovAn.dao;

import ru.kpfu.itis.group605.DrozdovAn.configs.BdSingleton;
import ru.kpfu.itis.group605.DrozdovAn.entites.Photos;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class PhotoDao implements PhotoDaoInterface{

    public List<Photos> getAllPhoto() {

        String request = ("SELECT * FROM photos");
        try {
            PreparedStatement st = BdSingleton.getConnection().prepareStatement(request);
            ResultSet resultSet = st.executeQuery();
            List<Photos> a = new ArrayList<>();
            while (resultSet.next()) {
                a.add(new Photos(resultSet.getString("id"), resultSet.getString("photo")));
            }
            System.out.println(a);
            return a;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

}
