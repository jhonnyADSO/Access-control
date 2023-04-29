<%-- 
    Document   : add
    Created on : 21/04/2023, 3:26:22 p. m.
    Author     : E5
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario</title>
        <link rel="stylesheet" href="resourses/bootstrap.css">
        <link rel="stylesheet" href="style.css">
        <link rel='shortcut icon' href='img/user.png'>
    </head>
    <body>
       
        <div class="container">
            
            <h1 class="text-center">FORMULARIO</h1>
            
            <form action="Controlador" class="  mt-5 p-5" style="background-color: rgba(0,0,0,0.1) ">
               
                     <img src='img/userConfig.png' height="90" width="90" >
                
                <div class="row" >
                    <div class="col-2">
                        <label  for="idCedula">CEDULA:</label>
                        <input class="form-control" type="text" name="txtcedula" id="idCedula" placeholder="*" required>
                    </div>
                    
                    <div class="col-5">
                        <label for="idNombres">NOMBRES:</label>
                        <input class="form-control" type="text" name="txtnombres" id="idNombres" placeholder="*" required>
                    </div>
                    
                    <div class="col-5">
                        <label for="idApellidos">APELLIDOS:</label>
                        <input class="form-control" type="text" name="txtapellidos" id="idApellidos" placeholder="*" required>
                    </div>
                </div>
               
                   
                 <div class="row">
                        <div class="col-3">
                            <label for="idTelefono">TELEFONO:</label>
                            <input class="form-control" type="text"  name="txttelefono" id="idTelefono" placeholder="*" required>
                        </div>
                        <div class="col-4">
                            <label for="idDireccion">DIRECCION:</label>
                            <input class="form-control" type="text"  name="txtdireccion" id="idDireccion" placeholder="*" required>
                        </div>
                        <div class="col-5">
                              <label for="idCorreo">CORREO:</label>
                              <input class="form-control" type="text" name="txtcorreo" id="idCorreo" placeholder="*" required>
                        </div>
                 </div>     
                
                <div class="row">
                    <div class="col">
                        <label for="idCargo">CARGO:</label>
                        <input class="form-control" type="text" name="txtcargo" id="idCargo"placeholder="*" required>
                    </div>
                </div>
                
                <div class="d-grid mt-3" >
                    <input class="btn btn-outline-warning" type="submit" name="accion" value="Agregar" >
                </div>
                
                <a class='btn btn-outline-warning mt-3' href="Controlador?accion=listar">Lista de datos</a>
            </form>
            
        </div>
    </body>
</html>
