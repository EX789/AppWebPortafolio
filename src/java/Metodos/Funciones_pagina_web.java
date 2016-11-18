/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Metodos;

import com.microsoft.schemas._2003._10.serialization.arrays.ArrayOfstring;
import org.datacontract.schemas._2004._07.backend.ArrayOfAgendaMedico;
import org.datacontract.schemas._2004._07.backend.ArrayOfCentroMedico;
import org.datacontract.schemas._2004._07.backend.ArrayOfMedico;
import org.datacontract.schemas._2004._07.backend.ArrayOfReserva;
import org.datacontract.schemas._2004._07.backend.Persona;

/**
 *
 * @author raide
 */
public class Funciones_pagina_web {

    public static Boolean crearPersona(java.lang.String rut, java.lang.String nombre, java.lang.String apP, java.lang.String apM, java.lang.String direc, java.lang.String comuna, java.lang.Integer telefono, java.lang.String correo, java.lang.String pass) {
        org.tempuri.BackendSVC service = new org.tempuri.BackendSVC();
        org.tempuri.IbackendSVC port = service.getBasicHttpBindingIbackendSVC();
        return port.crearPersona(rut, nombre, apP, apM, direc, comuna, telefono, correo, pass);
    }

    public static ArrayOfMedico listarMedico() {
        org.tempuri.BackendSVC service = new org.tempuri.BackendSVC();
        org.tempuri.IbackendSVC port = service.getBasicHttpBindingIbackendSVC();
        return port.listarMedico();
    }

    public static ArrayOfCentroMedico listarCentro() {
        org.tempuri.BackendSVC service = new org.tempuri.BackendSVC();
        org.tempuri.IbackendSVC port = service.getBasicHttpBindingIbackendSVC();
        return port.listarCentro();
    }

    public static Persona recuperaDatos(java.lang.String rut) {
        org.tempuri.BackendSVC service = new org.tempuri.BackendSVC();
        org.tempuri.IbackendSVC port = service.getBasicHttpBindingIbackendSVC();
        return port.recuperaDatos(rut);
    }

    public static ArrayOfstring distinto() {
        org.tempuri.BackendSVC service = new org.tempuri.BackendSVC();
        org.tempuri.IbackendSVC port = service.getBasicHttpBindingIbackendSVC();
        return port.distinto();
    }

    public static ArrayOfMedico listarMedicoxEspecyCentro(com.microsoft.schemas._2003._10.serialization.arrays.ArrayOfint id, java.lang.String espec) {
        org.tempuri.BackendSVC service = new org.tempuri.BackendSVC();
        org.tempuri.IbackendSVC port = service.getBasicHttpBindingIbackendSVC();
        return port.listarMedicoxCentroyEsp(id, espec);
    }

    public static ArrayOfAgendaMedico listarHoraxFechayMedico(javax.xml.datatype.XMLGregorianCalendar fecha, java.lang.Integer idMedico) {
        org.tempuri.BackendSVC service = new org.tempuri.BackendSVC();
        org.tempuri.IbackendSVC port = service.getBasicHttpBindingIbackendSVC();
        return port.listarHoraxFechayMedico(fecha, idMedico);
    }

    public static ArrayOfReserva listarReserva(java.lang.String rut) {
        org.tempuri.BackendSVC service = new org.tempuri.BackendSVC();
        org.tempuri.IbackendSVC port = service.getBasicHttpBindingIbackendSVC();
        return port.listarReserva(rut);
    }

    public static Boolean eliminarReserva(java.lang.Integer idAgenda, java.lang.String rut) {
        org.tempuri.BackendSVC service = new org.tempuri.BackendSVC();
        org.tempuri.IbackendSVC port = service.getBasicHttpBindingIbackendSVC();
        return port.eliminarReserva(idAgenda, rut);
    }

    public static Boolean crearReserva(java.lang.Integer estadoReserva, java.lang.String rut, java.lang.Integer idAgenda) {
        org.tempuri.BackendSVC service = new org.tempuri.BackendSVC();
        org.tempuri.IbackendSVC port = service.getBasicHttpBindingIbackendSVC();
        return port.crearReserva(estadoReserva, rut, idAgenda);
    }

    
    
    
}
