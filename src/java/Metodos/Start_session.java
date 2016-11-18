package Metodos;

import org.datacontract.schemas._2004._07.backend.ArrayOfMedico;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author raide
 */
public class Start_session {

    public static Boolean validarPersona(java.lang.String rut, java.lang.String pass) {
        org.tempuri.BackendSVC service = new org.tempuri.BackendSVC();
        org.tempuri.IbackendSVC port = service.getBasicHttpBindingIbackendSVC();
        return port.validarPersona(rut, pass);
    }

    public static ArrayOfMedico listarMedico() {
        org.tempuri.BackendSVC service = new org.tempuri.BackendSVC();
        org.tempuri.IbackendSVC port = service.getBasicHttpBindingIbackendSVC();
        return port.listarMedico();
    }


}
