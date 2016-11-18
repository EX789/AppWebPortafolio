/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Metodos;

/**
 *
 * @author raide
 */
public class FuncionesGenerales {
    
    
    
    public static String darFormatoHora(Integer elemento){
        if (elemento >=0 && elemento<=9) {
            String nuevoFormato = "0"+elemento;
            return nuevoFormato;
        } else{
            return elemento.toString();
        }
    }
}
