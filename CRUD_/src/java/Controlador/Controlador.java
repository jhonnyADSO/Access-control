/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Persona;
import ModeloDAO.PersonaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author E5
 */
public class Controlador extends HttpServlet {
    
    String index="index.jsp";
    String listar="vistas/listar.jsp";
    String add="vistas/add.jsp";
    Persona per=new Persona();
    PersonaDAO dao=new PersonaDAO();
    String edit="vistas/edit.jsp";
    int id;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso="";
        String action=request.getParameter("accion");
        
        if (action.equalsIgnoreCase("listar")){
            acceso=listar;
        }else if(action.equalsIgnoreCase("index")){
            acceso=index;
        }else if(action .equalsIgnoreCase("add")){
            acceso=add;
        }else if(action.equalsIgnoreCase("Agregar")){
            int cedula=Integer.parseInt(request.getParameter("txtcedula"));
            String nombres=request.getParameter("txtnombres");
            String apellidos=request.getParameter("txtapellidos");
            String telefono=request.getParameter("txttelefono");
            String direccion=request.getParameter("txtdireccion");
            String correo=request.getParameter("txtcorreo");
            String cargo=request.getParameter("txtcargo");
            per.setCedula(cedula);
            per.setNombres(nombres);
            per.setApellidos(apellidos);
            per.setTelefono(telefono);
            per.setDireccion(direccion);
            per.setCorreo(correo);
            per.setCargo(cargo);
            dao.add(per);
            acceso=listar;
        
        }else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("idper",request.getParameter("id"));
            acceso=edit;
        }else if (action.equalsIgnoreCase("Actualizar")){
            int id=Integer.parseInt(request.getParameter("txtid"));
            int cedula=Integer.parseInt(request.getParameter("txtcedula"));
            String nombres=request.getParameter("txtnombres");
            String apellidos=request.getParameter("txtapellidos");
            String telefono=request.getParameter("txttelefono");
            String direccion=request.getParameter("txtdireccion");
            String correo=request.getParameter("txtcorreo");
            String cargo=request.getParameter("txtcargo");
            per.setId(id);
            per.setCedula(cedula);
            per.setNombres(nombres);
            per.setApellidos(apellidos);
            per.setTelefono(telefono);
            per.setDireccion(direccion);
            per.setCorreo(correo);
            per.setCargo(cargo);
            dao.edit(per);
            acceso=listar;
        }else if(action.equalsIgnoreCase("eliminar")){
            id=Integer.parseInt(request.getParameter("id"));
            per.setId(id);
            dao.eliminar(id);
            acceso=listar;
        }
        RequestDispatcher vistas=request.getRequestDispatcher(acceso);
        vistas.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
