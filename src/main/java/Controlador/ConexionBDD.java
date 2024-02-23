/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author DELL
 */
public class ConexionBDD {
    java.sql.Connection conexion;

    //METODO DE CONEXIÓN
    public java.sql.Connection conectar() {
        try {
            Class.forName("com.mysql.jdbc.Driver"); //FIJARSE EN EL NOMBRE DE LA BASE DE DATOS Y LA CONTRASEÑA
            conexion = (java.sql.Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ExamenRecuperacion?autoReconnect=true&useSSL=false", "root", "1234");

        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("ERROR DE CONEXION BD" + e);
        }
        return conexion;
    }
}
