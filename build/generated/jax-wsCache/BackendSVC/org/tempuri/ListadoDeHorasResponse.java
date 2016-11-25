
package org.tempuri;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElementRef;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;
import org.datacontract.schemas._2004._07.backend.ArrayOfAgendaMedico;


/**
 * <p>Clase Java para anonymous complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="ListadoDeHorasResult" type="{http://schemas.datacontract.org/2004/07/Backend.Negocio}ArrayOfAgenda_medico" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "listadoDeHorasResult"
})
@XmlRootElement(name = "ListadoDeHorasResponse")
public class ListadoDeHorasResponse {

    @XmlElementRef(name = "ListadoDeHorasResult", namespace = "http://tempuri.org/", type = JAXBElement.class)
    protected JAXBElement<ArrayOfAgendaMedico> listadoDeHorasResult;

    /**
     * Obtiene el valor de la propiedad listadoDeHorasResult.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link ArrayOfAgendaMedico }{@code >}
     *     
     */
    public JAXBElement<ArrayOfAgendaMedico> getListadoDeHorasResult() {
        return listadoDeHorasResult;
    }

    /**
     * Define el valor de la propiedad listadoDeHorasResult.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link ArrayOfAgendaMedico }{@code >}
     *     
     */
    public void setListadoDeHorasResult(JAXBElement<ArrayOfAgendaMedico> value) {
        this.listadoDeHorasResult = value;
    }

}
