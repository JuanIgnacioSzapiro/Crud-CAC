/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Config.Connect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Juan Ignacio
 */
public class UserDAO {
    //DAO -> Data Access Object
    Connection connection;
    String show="SELECT id, name, surname, email FROM crud_cac.crud_cac_table";
    String byID =" WHERE id=?";
    String insert ="INSERT INTO crud_cac.crud_cac_table (name, surname, email) VALUES (?,?,?)";
    String update="UPDATE crud_cac.crud_cac_table SET name=?, surname=?, email=?";
    String delete="DELETE FROM crud_cac.crud_cac_table";
    public UserDAO(){
        Connect connect = new Connect();
        connection=connect.getConnection();
    }
    public List<UserModel> listUsers(){
        PreparedStatement ps;
        ResultSet rs;
        List<UserModel> list = new ArrayList<>();
        try {
            ps=connection.prepareStatement(show);
            rs=ps.executeQuery();
            while (rs.next()){
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String surname = rs.getString("surname");
                String email = rs.getString("email");
                UserModel user_obj = new UserModel(id, name, surname, email);
                list.add(user_obj);
            }
            return list;
        }catch (SQLException e){
            System.out.println(e.toString());
            return null;
        }
    }
    public UserModel showByID(int searchedID){
        PreparedStatement ps;
        ResultSet rs;
        UserModel user_obj = null;
        try {
            ps=connection.prepareStatement(show+byID);
            ps.setInt(1, searchedID);
            rs=ps.executeQuery();
            while (rs.next()){
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String surname = rs.getString("surname");
                String email = rs.getString("email");
                user_obj = new UserModel(id, name, surname, email);
            }
            return user_obj;
        }catch (SQLException e){
            System.out.println(e.toString());
            return null;
        }
    }
    public boolean insertUser(UserModel user_obj){
        PreparedStatement ps;
        try{
            ps = connection.prepareStatement(insert);
            ps.setString(1, user_obj.getName());
            ps.setString(2, user_obj.getSurname());
            ps.setString(3, user_obj.getEmail());
            ps.execute();
            return true;
        }catch (SQLException e){
            System.out.println(e.toString());
            return false;
        }
    }
    public boolean updateUser(UserModel user_obj){
        PreparedStatement ps;
        try{
            ps= connection.prepareStatement(update+byID);
            ps.setString(1, user_obj.getName());
            ps.setString(2, user_obj.getSurname());
            ps.setString(3, user_obj.getEmail());
            ps.setInt(4, user_obj.getId());
            return true;
        }catch (SQLException e){
            System.out.println(e.toString());
            return false;
        }
    }
    public boolean deleteUser(int searchedID){
        PreparedStatement ps;
        try {
            ps=connection.prepareStatement(delete+byID);
            ps.setInt(1, searchedID);
            ps.execute();
            return true;
        }catch (SQLException e){
            System.out.println(e.toString());
            return false;
        }
    }
}

