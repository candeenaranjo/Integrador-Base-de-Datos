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
public class Contrato {

    private String nroSerie;
    private LocalDate fechaFirma;
    private LocalDate fechaOcupacion;
    private LocalDate fechaDesocupacion;
    private double montoMensual;
    private long dniInquilino;
    private String nroMatriculaEscribano;
    private int idPropiedad;

    public Contrato() {
    }

    public Contrato(String nroSerie, LocalDate fechaFirma,
                    LocalDate fechaOcupacion, LocalDate fechaDesocupacion,
                    double montoMensual, long dniInquilino,
                    String nroMatriculaEscribano, int idPropiedad) {

        this.nroSerie = nroSerie;
        this.fechaFirma = fechaFirma;
        this.fechaOcupacion = fechaOcupacion;
        this.fechaDesocupacion = fechaDesocupacion;
        this.montoMensual = montoMensual;
        this.dniInquilino = dniInquilino;
        this.nroMatriculaEscribano = nroMatriculaEscribano;
        this.idPropiedad = idPropiedad;
    }

    public String getNroSerie() {
        return nroSerie;
    }

    public void setNroSerie(String nroSerie) {
        this.nroSerie = nroSerie;
    }

    public LocalDate getFechaFirma() {
        return fechaFirma;
    }

    public void setFechaFirma(LocalDate fechaFirma) {
        this.fechaFirma = fechaFirma;
    }

    public LocalDate getFechaOcupacion() {
        return fechaOcupacion;
    }

    public void setFechaOcupacion(LocalDate fechaOcupacion) {
        this.fechaOcupacion = fechaOcupacion;
    }

    public LocalDate getFechaDesocupacion() {
        return fechaDesocupacion;
    }

    public void setFechaDesocupacion(LocalDate fechaDesocupacion) {
        this.fechaDesocupacion = fechaDesocupacion;
    }

    public double getMontoMensual() {
        return montoMensual;
    }

    public void setMontoMensual(double montoMensual) {
        this.montoMensual = montoMensual;
    }

    public long getDniInquilino() {
        return dniInquilino;
    }

    public void setDniInquilino(long dniInquilino) {
        this.dniInquilino = dniInquilino;
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
