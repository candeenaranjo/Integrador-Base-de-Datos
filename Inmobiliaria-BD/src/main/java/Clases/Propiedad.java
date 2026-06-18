/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package Clases;

/**
 *
 * @author Usuario
 */
public class Propiedad {
  private int idPropiedad;
    private String direccion;
    private TipoPropiedad tipoPropiedad;
    private boolean enVenta;
    private boolean enAlquiler;
    private double valor;
    private int antiguedad;
    private int cantAmbientes;
    private double superficie;
    private Zona zona;
    private long dniPropietario;

    public Propiedad() {
    }

    public Propiedad(int idPropiedad, String direccion, TipoPropiedad tipoPropiedad,
                     boolean enVenta, boolean enAlquiler, double valor,
                     int antiguedad, int cantAmbientes, double superficie,
                     Zona zona, long dniPropietario) {

        this.idPropiedad = idPropiedad;
        this.direccion = direccion;
        this.tipoPropiedad = tipoPropiedad;
        this.enVenta = enVenta;
        this.enAlquiler = enAlquiler;
        this.valor = valor;
        this.antiguedad = antiguedad;
        this.cantAmbientes = cantAmbientes;
        this.superficie = superficie;
        this.zona = zona;
        this.dniPropietario = dniPropietario;
    }

    public int getIdPropiedad() {
        return idPropiedad;
    }

    public void setIdPropiedad(int idPropiedad) {
        this.idPropiedad = idPropiedad;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public TipoPropiedad getTipoPropiedad() {
        return tipoPropiedad;
    }

    public void setTipoPropiedad(TipoPropiedad tipoPropiedad) {
        this.tipoPropiedad = tipoPropiedad;
    }

    public boolean isEnVenta() {
        return enVenta;
    }

    public void setEnVenta(boolean enVenta) {
        this.enVenta = enVenta;
    }

    public boolean isEnAlquiler() {
        return enAlquiler;
    }

    public void setEnAlquiler(boolean enAlquiler) {
        this.enAlquiler = enAlquiler;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }

    public int getAntiguedad() {
        return antiguedad;
    }

    public void setAntiguedad(int antiguedad) {
        this.antiguedad = antiguedad;
    }

    public int getCantAmbientes() {
        return cantAmbientes;
    }

    public void setCantAmbientes(int cantAmbientes) {
        this.cantAmbientes = cantAmbientes;
    }

    public double getSuperficie() {
        return superficie;
    }

    public void setSuperficie(double superficie) {
        this.superficie = superficie;
    }

    public Zona getZona() {
        return zona;
    }

    public void setZona(Zona zona) {
        this.zona = zona;
    }

    public long getDniPropietario() {
        return dniPropietario;
    }

    public void setDniPropietario(long dniPropietario) {
        this.dniPropietario = dniPropietario;
    }

    @Override
    public String toString() {
        return direccion;
    }
}
