<%-- 
    Document   : edit
    Created on : 21/04/2023, 6:19:11 p. m.
    Author     : E5
--%>

<%@page import="Modelo.Persona"%>
<%@page import="ModeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar registro</title>
        <link rel='stylesheet' href='style.css'>
        <link rel='stylesheet' href='resourses/bootstrap.css'>
        <link rel='shortcut icon' href='img/userConfig.png'>
    </head>
    <body>
        <div class='container'>
           
             <%
                int id=Integer.parseInt((String)request.getAttribute("idper"));
                PersonaDAO dao=new PersonaDAO();
                Persona per=(Persona)dao.list(id);
            %>
           
           
            <form action="Controlador" class=" p-5" style="background-color: rgba(0,0,0,0.1) ">
                
                
                 <table class='table table-bordered table-striped table-hover'>
                <thead>
                    <tr class='table-dark'>
                        <th>ID</th>
                        <th>CEDULA</th>
                        <th>NOMBRES</th>
                        <th>APELLIDOS</th>
                        <th>TELEFONO</th>
                        <th>DIRECCION</th>
                        <th>CORREO</th>
                        <th>CARGO</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class='table-info'>
                        <td><%=per.getId() %></td>
                        <td><%=per.getCedula() %></td>
                        <td><%=per.getNombres() %></td>
                        <td><%=per.getApellidos() %></td>
                        <td><%=per.getTelefono() %></td>
                        <td><%=per.getDireccion() %></td>
                        <td><%=per.getCorreo() %></td>
                        <td><%=per.getCargo() %></td>
                    </tr>
                </tbody>
            </table>
                     <h3 class='text-center' style='background-color: #0dcaf0 ' >Actualizar datos de <%=per.getNombres() %></h3>
                     <img src='img/card.png' height="100" width="100" >
                
                <div class="row" >
                    <div class="col-2">
                        <label  for="idCedula">CEDULA:</label>
                        <input class="form-control" type="text" name="txtcedula" id="idCedula" placeholder="*" required value='<%=per.getCedula() %>'>
                    </div>
                    
                    <div class="col-5">
                        <label for="idNombres">NOMBRES:</label>
                        <input class="form-control" type="text" name="txtnombres" id="idNombres" placeholder="*" required value='<%=per.getNombres() %>'>
                    </div>
                    
                    <div class="col-5">
                        <label for="idApellidos">APELLIDOS:</label>
                        <input class="form-control" type="text" name="txtapellidos" id="idApellidos" placeholder="*" required value='<%=per.getApellidos() %>'>
                    </div>
                </div>
               
                   
                 <div class="row">
                        <div class="col-3">
                            <label for="idTelefono">TELEFONO:</label>
                            <input class="form-control" type="text"  name="txttelefono" id="idTelefono" placeholder="*" required value='<%=per.getTelefono() %>'>
                        </div>
                        <div class="col-4">
                            <label for="idDireccion">DIRECCION:</label>
                            <input class="form-control" type="text"  name="txtdireccion" id="idDireccion" placeholder="*" required value='<%=per.getDireccion() %>' >
                        </div>
                        <div class="col-5">
                              <label for="idCorreo">CORREO:</label>
                              <input class="form-control" type="text" name="txtcorreo" id="idCorreo" placeholder="*" required value='<%=per.getCorreo() %>'>
                        </div>
                 </div>     
                
                <div class="row">
                    <div class="col">
                        <label for="idCargo">CARGO:</label>
                        <input class="form-control" type="text" name="txtcargo" id="idCargo"placeholder="*" required value='<%=per.getCargo() %>'>
                    </div>
                </div>
                
                <div class="d-grid mt-3" >
                    <input type='hidden' name='txtid' value='<%=per.getId() %>'>
                    <input class="btn btn-outline-info" type="submit" name="accion" value="Actualizar" >
                </div>
                
                <a class='btn btn-outline-warning mt-3' href="Controlador?accion=listar">Lista de datos</a>
                <a class='btn btn-outline-warning mt-3' href='Controlador?accion=add'>Agregar funcionario</a>
            </form>
            

        </div>
    </body>
</html>
