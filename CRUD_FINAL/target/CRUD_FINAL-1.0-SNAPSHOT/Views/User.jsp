<%-- 
    Document   : user
    Created on : 6/01/2022, 04:52:38 PM
    Author     : Juan Ignacio
--%>

<%@page import="Model.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <div class="row">
            <a class="btn btn-primary col-4 m-4" href="UserController?action=new">Agregar usuario</a>
            <table class="table table-primary">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Email</th>
                        <th>Modificar</th>
                        <th>Eliminar</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        List<UserModel> resutlt=null;
                        UserDAO user = new UserDAO();
                        resutlt=user.listUsers();
                        for(int counter = 0; counter<resutlt.size(); counter++){
                            String route="UsersController?action=modifiere&id="+resutlt.get(counter).getId();
                            String routeD="UsersController?action=delete=&id"+resutlt.get(counter).getId();
                    %>
                        <tr>
                            <td><%=resutlt.get(counter).getId()%></td>
                            <td><%=resutlt.get(counter).getName()%></td>
                            <td><%=resutlt.get(counter).getSurname()%></td>
                            <td><%=resutlt.get(counter).getEmail()%></td>
                            <td><a class="text-success" href=<%=route%>></a></td>
                            <td><a class="text-danger" href=<%=routeD%>></a></td>
                        </tr>
                </tbody>
                <%
                        }
                %>
            </table>
        </div>
        </div>
    </body>
</html>
