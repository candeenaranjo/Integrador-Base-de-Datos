/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package Clases;

/**
 *
 * @author Usuario
 */
public class Persona {

    private long dni;
    private String nombreApellido;
    private String direccion;
    private String tipoPersona;

    public Persona() {
    }

    public Persona(long dni, String nombreApellido,
                   String direccion, String tipoPersona) {

        this.dni = dni;
        this.nombreApellido = nombreApellido;
        this.direccion = direccion;
        this.tipoPersona = tipoPersona;
    }

    public long getDni() {
        return dni;
    }

    public void setDni(long dni) {
        this.dni = dni;
    }

    public String getNombreApellido() {
        return nombreApellido;
    }

    public void setNombreApellido(String nombreApellido) {
        this.nombreApellido = nombreApellido;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTipoPersona() {
        return tipoPersona;
    }

    public void setTipoPersona(String tipoPersona) {
        this.tipoPersona = tipoPersona;
    }
}
