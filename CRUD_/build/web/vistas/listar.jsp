<%-- 
    Document   : listar
    Created on : 21/04/2023, 2:25:43 p. m.
    Author     : E5
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Persona"%>
<%@page import="ModeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Base de datos</title>
        <link rel='stylesheet' href='style.css'>
        <link rel='stylesheet' href='resourses/bootstrap.css'>
        <link rel='shorcut icon' href='img/user.png'>
    </head>
    <body>
              
        <div class='container mt-3'>
             
            <div >
                <a class='btn btn-outline-warning' href="Controlador?accion=index">Regresar</a>
                <a class='btn btn-outline-success' href="Controlador?accion=add">Agregar funcionario</a>
            </div>
            
            <h1 class='text-center mt-4'>BASE DE DATOS FUNCIONARIOS</h1>
            <table class='table table-bordered table-striped table-hover'>
                <thead>
                    <tr class='table-dark text-center'>
                        <th>ID</th>
                        <th>CEDULA</th>
                        <th>NOMBRES</th>
                        <th>APELLIDOS</th>
                        <th>TELEFONO</th>
                        <th>DIRECCION</th>
                        <th>CORREO</th>
                        <th>CARGO</th>
                        <th>ACCIONES</th>
                    </tr>
                </thead>
                 <%
                    PersonaDAO dao=new PersonaDAO();
                    List<Persona>list=dao.listar();
                    Iterator<Persona>iter=list.iterator();
                    Persona per=null;
                    while(iter.hasNext()){
                         per=iter.next();
                %>
                <tbody>
                    <tr>
                        <td class='table-info'><%= per.getId() %></td>
                        <td class='table-light'><%= per.getCedula() %></td>
                        <td class='table-light'><%= per.getNombres() %></td>
                        <td class='table-light'><%= per.getApellidos() %></td>
                        <td class='table-light'><%= per.getTelefono() %></td>
                        <td class='table-light'><%= per.getDireccion() %></td>
                        <td class='table-light'><%= per.getCorreo() %></td>
                        <td class='table-light'><%= per.getCargo() %></td>
                        <td class='table-light'>
                            <a class='btn btn-outline-warning' href="Controlador?accion=editar&id=<%=per.getId() %>">Editar</a>
                            <a class='btn btn-outline-danger' href="Controlador?accion=eliminar&id=<%=per.getId() %>">Eliminar</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>

        </div>
    </body>
</html>
