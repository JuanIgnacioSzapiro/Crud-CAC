/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Config;

import java.sql.*;

/**
 *
 * @author Juan Ignacio
 */
public class Connect {
    public String driver = "com.mysql.jdbc.Driver";

    public Connection getConnection() {
        Connection connection = null;
        String url_mysql = "jdbc:mysql://127.0.0.1:3306/";
        String user_mysql = "root";
        String password_mysql = "1234567Ll";
        try {
            Class.forName(driver);
            connection = DriverManager.getConnection(url_mysql, user_mysql, password_mysql);
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e.toString());
        }
        return connection;
    }
    public static void main(String[] args) throws SQLException{
        Connection conexion = null;
        Connect con = new Connect();
        conexion = con.getConnection();
        PreparedStatement ps;
        ResultSet rs;
        ps=conexion.prepareStatement("SELECT * FROM crud_cac.crud_cac_table");
        rs=ps.executeQuery();
        while (rs.next()){
            int id = rs.getInt("id");
            String name = rs.getString("name");
            String surname = rs.getString("surname");
            String email = rs.getString("email");
            System.out.println("id: "+id+" name: "+name+" surname: "+surname+" email: "+email);
        }
    }
}