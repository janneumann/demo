/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import static data.DB.getConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import logic.User;

/**
 *
 * @author thomas
 */
public class DataMapper {

    public List<User> getAllUsers() {
        List<User> users = new ArrayList();
        User user = null;
        try {
            // SQL string test it in workbench to see if it works on the database.
            String sql = "SELECT id, username, password FROM users";
            Connection conn = getConnection(); //create the connections to the database
            PreparedStatement pstmt = conn.prepareStatement(sql); //Create the statement to be run on the database
            ResultSet rs = pstmt.executeQuery(); //Actually execute the statement on the database.
            while (rs.next()) { //loop through each row in the dataset
                int id = rs.getInt("id");
                String username = rs.getString("username");
                String password = rs.getString("password");
                System.out.println("username: " + username);
                user = new User(id, username, password);
                users.add(user); //add each new user to the list
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return users;
    }
    //Allways test all methods you create:
    public static void main(String[] args) {
        new DataMapper().getAllUsers().forEach((user)->{System.out.println(user);});
    }
}
