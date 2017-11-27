package ru.kpfu.itis.group605.DrozdovAn.helpers;

import ru.kpfu.itis.group605.DrozdovAn.configs.BdSingleton;

import java.sql.PreparedStatement;
import java.sql.SQLException;


public class UpdeatBD {

    public void updeat (String table, String column, Integer id, String text){

        if (BdSingleton.getConnection() != null && table != null && column != null && id != null && text != null ) {
            String request = "UPDATE " + table + " set " + column + " = " + text + " where id = " + id;
            try {
                PreparedStatement st = BdSingleton.getConnection().prepareStatement(request);
                st.execute();
                st.close();

            } catch (SQLException sql) {

                sql.printStackTrace();

            }
        }

    }

}
