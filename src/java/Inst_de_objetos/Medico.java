/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Inst_de_objetos;

import java.util.ArrayList;
import org.datacontract.schemas._2004._07.backend.ArrayOfMedico;

/**
 *
 * @author raide
 */
public class Medico {

    private String rut;
    private String nombre;
    private String especialidad;

    public Medico(String rut, String nombre, String especialidad) {
        this.rut = rut;
        this.nombre = nombre;
        this.especialidad = especialidad;
    }

    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEspecialidad() {
        return especialidad;
    }

    public void setEspecialidad(String especialidad) {
        this.especialidad = especialidad;
    }
    
    

    public static ArrayList<Medico> reListarMedicos(ArrayOfMedico lisMed) {
        ArrayList<Medico> lista = new ArrayList<>();
        for (org.datacontract.schemas._2004._07.backend.Medico med : lisMed.getMedico()) {
            lista.add(new Medico(med.getRut().getValue(), med.getNombre().getValue(), med.getEspecialidad().getValue()));
        }
        return lista;
    }
}
