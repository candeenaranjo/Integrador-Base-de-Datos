/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package Clases;
import java.time.LocalDate;
/**
 *
 * @author Usuario
 */
public class Venta {

    private int idVenta;
    private double comision;
    private LocalDate fecha;
    private double precio;
    private long dniComprador;
    private long dniPropietario;
    private String nroMatriculaEscribano;
    private int idPropiedad;

    public Venta() {
    }

    public Venta(int idVenta, double comision, LocalDate fecha, double precio,
                 long dniComprador, long dniPropietario,
                 String nroMatriculaEscribano, int idPropiedad) {

        this.idVenta = idVenta;
        this.comision = comision;
        this.fecha = fecha;
        this.precio = precio;
        this.dniComprador = dniComprador;
        this.dniPropietario = dniPropietario;
        this.nroMatriculaEscribano = nroMatriculaEscribano;
        this.idPropiedad = idPropiedad;
    }

    public int getIdVenta() {
        return idVenta;
    }

    public void setIdVenta(int idVenta) {
        this.idVenta = idVenta;
    }

    public double getComision() {
        return comision;
    }

    public void setComision(double comision) {
        this.comision = comision;
    }

    public LocalDate getFecha() {
        return fecha;
    }

    public void setFecha(LocalDate fecha) {
        this.fecha = fecha;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public long getDniComprador() {
        return dniComprador;
    }

    public void setDniComprador(long dniComprador) {
        this.dniComprador = dniComprador;
    }

    public long getDniPropietario() {
        return dniPropietario;
    }

    public void setDniPropietario(long dniPropietario) {
        this.dniPropietario = dniPropietario;
    }

    public String getNroMatriculaEscribano() {
        return nroMatriculaEscribano;
    }

    public void setNroMatriculaEscribano(String nroMatriculaEscribano) {
        this.nroMatriculaEscribano = nroMatriculaEscribano;
    }

    public int getIdPropiedad() {
        return idPropiedad;
    }

    public void setIdPropiedad(int idPropiedad) {
        this.idPropiedad = idPropiedad;
    }
}
