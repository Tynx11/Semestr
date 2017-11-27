package ru.kpfu.itis.group605.DrozdovAn.helpers;

import ru.kpfu.itis.group605.DrozdovAn.configs.BdSingleton;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DeleteFromBDForToken {

    public void delete(String request, String parametr) {

        if (BdSingleton.getConnection() != null && !parametr.equals("")) {

            try {

                PreparedStatement st = BdSingleton.getConnection().prepareStatement(request);
                st = BdSingleton.getConnection().prepareStatement(request);
                st.setString(1, parametr);
                st.executeUpdate();
                st.close();

            } catch (SQLException sql) {

                sql.printStackTrace();

            }

        }

    }

}
