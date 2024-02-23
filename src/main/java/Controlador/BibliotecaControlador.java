/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import Modelo.Libro;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author DELL
 */
public class BibliotecaControlador {
    
    private Libro libro;
    ConexionBDD conectar = new ConexionBDD();
    Connection conectado = (Connection) conectar.conectar();
    PreparedStatement ejecutar;
    ResultSet resultado;

    public BibliotecaControlador() {
    }

    public Libro getLibro() {
        return libro;
    }

    public void setLibro(Libro libro) {
        this.libro = libro;
    }

    public ConexionBDD getConectar() {
        return conectar;
    }

    public void setConectar(ConexionBDD conectar) {
        this.conectar = conectar;
    }

    public Connection getConectado() {
        return conectado;
    }

    public void setConectado(Connection conectado) {
        this.conectado = conectado;
    }

    public PreparedStatement getEjecutar() {
        return ejecutar;
    }

    public void setEjecutar(PreparedStatement ejecutar) {
        this.ejecutar = ejecutar;
    }

    public ResultSet getResultado() {
        return resultado;
    }

    public void setResultado(ResultSet resultado) {
        this.resultado = resultado;
    }
    
    
}
