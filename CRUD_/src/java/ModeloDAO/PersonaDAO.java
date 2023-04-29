/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Interfaces.CRUD;
import Modelo.Persona;
import java.util.List;
import Config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class PersonaDAO implements CRUD {
    
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Persona per=new Persona();

    @Override
    public List listar() {
        
        ArrayList<Persona>list=new ArrayList<>();
        String sql="select * from funcionarios";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Persona per=new Persona();
                per.setId(rs.getInt("id"));
                per.setCedula(rs.getInt("Cedula"));
                per.setNombres(rs.getString("Nombres"));
                per.setApellidos(rs.getString("Apellidos"));
                per.setTelefono(rs.getString("Telefono"));;
                per.setDireccion(rs.getString("Direccion"));
                per.setCorreo(rs.getString("Correo"));
                per.setCargo(rs.getString("Cargo"));
                list.add(per);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Persona list(int id) {
        String sql="select * from funcionarios where id="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                per.setId(rs.getInt("id"));
                per.setCedula(rs.getInt("Cedula"));
                per.setNombres(rs.getString("Nombres"));
                per.setApellidos(rs.getString("Apellidos"));
                per.setTelefono(rs.getString("Telefono"));
                per.setDireccion(rs.getString("Direccion"));
                per.setCorreo(rs.getString("Correo"));
                per.setCargo(rs.getString("Cargo"));
            }
        } catch (Exception e) {
        }
        return per;
    }

    @Override
    public boolean add(Persona per) {
        String sql="insert into funcionarios (Cedula,Nombres,Apellidos,Telefono,Direccion,Correo,Cargo) values ('"+per.getCedula()+"' ,'"+per.getNombres()+"' ,'"+per.getApellidos()+"' ,'"+per.getTelefono()+"' ,'"+per.getDireccion()+"' ,'"+per.getCorreo()+"' ,'"+per.getCargo()+"') ";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean edit(Persona per) {
        String sql="update funcionarios set Cedula='"+per.getCedula()+"', Nombres='"+per.getNombres()+"', Apellidos='"+per.getApellidos()+"', Telefono='"+per.getTelefono()+"', Direccion='"+per.getDireccion()+"', Correo='"+per.getCorreo()+"', Cargo='"+per.getCargo()+"' where id="+per.getId();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql="delete from funcionarios where id="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
    
}
