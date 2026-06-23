/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package Clases;

/**
 *
 * @author Usuario
 */
public class Escribano {
    private String nroMatricula;
    private long dni;
    private String direccionEstudio;

    public Escribano() {
    }

    public Escribano(String nroMatricula, long dni, String direccionEstudio) {
        this.nroMatricula = nroMatricula;
        this.dni = dni;
        this.direccionEstudio = direccionEstudio;
    }

    public String getNroMatricula() {
        return nroMatricula;
    }

    public void setNroMatricula(String nroMatricula) {
        this.nroMatricula = nroMatricula;
    }

    public long getDni() {
        return dni;
    }

    public void setDni(long dni) {
        this.dni = dni;
    }

    public String getDireccionEstudio() {
        return direccionEstudio;
    }

    public void setDireccionEstudio(String direccionEstudio) {
        this.direccionEstudio = direccionEstudio;
    }

    @Override
    public String toString() {
        return nroMatricula;
    }
    
}