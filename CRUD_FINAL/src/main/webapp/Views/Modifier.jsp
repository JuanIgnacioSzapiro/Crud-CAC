<%-- 
    Document   : modifier
    Created on : 6/01/2022, 04:53:00 PM
    Author     : Juan Ignacio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <!-- # -->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
        <div class="container"></div>
            <h1 class="text-center">Modificar Alumno</h1>
            <div class="row">
                <form class="p-5" action="UserController?action=update" method="POST">
                    <div class="mb-3">
                        <label for="id" class="form-label"></label>
                        <input type="hidden" class="form-control" id="id" name="id" value=<%=result.getId()%>>
                    </div>
                    <div class="mb-3">
                        <label for="name" class="form-label">Nombre</label>
                        <input type="text" class="form-control" id="name" name="name" value=%=result.getName()%>
                    <div class="mb-3">
                        <label for="surname" class="form-label">Apellido</label>
                        <input type="text" class="form-control" id="surname" name="surname" value=%=result.getSurname()%>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" class="form-control" id="email" name="email" value=%=result.getEmail()%>
                    </div>
                    <button type="submit" class="btn btn-primary">Modificar</button>
                </form>
            </div>
        </div>
    </body>
</html>
