/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.UserDAO;
import Model.UserModel;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Juan Ignacio
 */
@WebServlet(name = "UsersController", urlPatterns = {"/UsersController"})
public class UsersController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDAO userDAO = new UserDAO();
        String action;
        RequestDispatcher dispatcher = null;
        action=request.getParameter("action");
        if(action==null || action.isEmpty()){
            dispatcher=request.getRequestDispatcher("Views/User.jsp");
        }
        else if(action.equals("modifier")){
            dispatcher = request.getRequestDispatcher("Views/Modifier.jsp");
        }
        else if (action.equals("update")){
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            String surname = request.getParameter("surname");
            String email = request.getParameter("email");
            UserModel user_obj=new UserModel(id, name, surname, email);
            userDAO.updateUser(user_obj);
            dispatcher = request.getRequestDispatcher("Views/User.jsp");
        }
        else if(action.equals("delete")){
            int id = Integer.parseInt(request.getParameter("id"));
            userDAO.deleteUser(id);
            dispatcher=request.getRequestDispatcher("Views/User.jsp");
        }
        else if(action.equals("new")){
            dispatcher=request.getRequestDispatcher("Views/New.jsp");
        }
        else if(action.equals("insert")){
            String name = request.getParameter("name");
            String surname = request.getParameter("surname");
            String email = request.getParameter("email");
            UserModel user_obj=new UserModel(0, name, surname, email);
            userDAO.insertUser(user_obj);
            dispatcher = request.getRequestDispatcher("Views/User.jsp");
        }
        else{
            dispatcher=request.getRequestDispatcher("Views/User.jsp");
        }
        dispatcher.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
    @Override
    public String getServletInfo(){
        return "Short description";
    }
}
