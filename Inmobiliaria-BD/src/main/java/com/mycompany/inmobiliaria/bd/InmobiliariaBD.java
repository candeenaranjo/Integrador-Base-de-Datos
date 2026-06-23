/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */
package com.mycompany.inmobiliaria.bd;

import java.sql.Connection;

/**
 *
 * @author maria
 */
public class InmobiliariaBD {

    public static void main(String[] args) {

        Connection con = Conexion.getConexion();
        if (con != null) {
            System.out.println("¡Conectado a MariaDB exitosamente!");
        } else {
            System.out.println("Error al conectar a la base de datos.");
        }

        Inmobiliaria principal = new Inmobiliaria();
        principal.setLocationRelativeTo(null);
        principal.setVisible(true);

    }
}
