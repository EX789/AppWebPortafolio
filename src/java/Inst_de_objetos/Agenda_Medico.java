/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Inst_de_objetos;

import java.util.ArrayList;
import java.util.Date;
import org.datacontract.schemas._2004._07.backend.AgendaMedico;
import org.datacontract.schemas._2004._07.backend.ArrayOfAgendaMedico;

/**
 *
 * @author raide
 */
public class Agenda_Medico {
    private int iid_agenda_medico;
    private String Fecha;
    private int Id_medico;
    private String Horas;
    private String Minutos;
    private String Descripcion;

    public Agenda_Medico(int iid_agenda_medico, String Fecha, int Id_medico, String Horas, String Minutos, String Descripcion) {
        this.iid_agenda_medico = iid_agenda_medico;
        this.Fecha = Fecha;
        this.Id_medico = Id_medico;
        this.Horas = Horas;
        this.Minutos = Minutos;
        this.Descripcion = Descripcion;
    }

    public int getIid_agenda_medico() {
        return iid_agenda_medico;
    }

    public void setIid_agenda_medico(int iid_agenda_medico) {
        this.iid_agenda_medico = iid_agenda_medico;
    }

    public String getFecha() {
        return Fecha;
    }

    public void setFecha(String Fecha) {
        this.Fecha = Fecha;
    }

    public int getId_medico() {
        return Id_medico;
    }

    public void setId_medico(int Id_medico) {
        this.Id_medico = Id_medico;
    }

    public String getHoras() {
        return Horas;
    }

    public void setHoras(String Horas) {
        this.Horas = Horas;
    }

    public String getMinutos() {
        return Minutos;
    }

    public void setMinutos(String Minutos) {
        this.Minutos = Minutos;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }
    
    public static ArrayList<Agenda_Medico> reListarAgenda(ArrayOfAgendaMedico lista){
        ArrayList<Agenda_Medico> listaNueva = new ArrayList<>();
        for (AgendaMedico ag : lista.getAgendaMedico()) {
            listaNueva.add(new Agenda_Medico(ag.getIdAgendaMedico(), ag.getFecha().getDay()+"/"+ag.getFecha().getMonth()+"/"+ag.getFecha().getYear(), ag.getIdMedico(),Metodos.FuncionesGenerales.darFormatoHora(ag.getHoras()) , Metodos.FuncionesGenerales.darFormatoHora(ag.getMinutos()), ag.getDescripcion().getValue()));
        }
        
        return listaNueva;
    }
}
