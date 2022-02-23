package com.example.loginpage_midtermexam.userdao;

import com.example.loginpage_midtermexam.usermodel.UserBean;

import java.sql.*;

import static com.example.loginpage_midtermexam.connectionfactory.ConnectionFactory.getConnection;

public class UserDAO {
    public UserBean validation(UserBean user) {
        String query = "SELECT * FROM users WHERE username = ?";
        PreparedStatement preparedStatement = null;
        UserBean userb = new UserBean();

        try {
            preparedStatement = getConnection().prepareStatement(query);
            preparedStatement.setString(1, user.getUsername());
            ResultSet result = preparedStatement.executeQuery();

            if (result.next()) {
                if (user.getPassword().equals(result.getString("password"))) {
                    userb.setFirstName(result.getString("first_name"));
                    userb.setLastName(result.getString("last_name"));
                    userb.setStatus(true);
                    return userb;
                } else {
                    userb.setStatus(false);
                    return userb;
                }
            } else {
                userb.setStatus(false);
                return userb;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        userb.setStatus(false);
        return userb;
    }
}
