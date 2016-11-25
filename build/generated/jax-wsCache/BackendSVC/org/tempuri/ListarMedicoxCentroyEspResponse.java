
package org.tempuri;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElementRef;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;
import org.datacontract.schemas._2004._07.backend.ArrayOfMedico;


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
 *         &lt;element name="listarMedicoxCentroyEspResult" type="{http://schemas.datacontract.org/2004/07/Backend.Negocio}ArrayOfMedico" minOccurs="0"/&gt;
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
    "listarMedicoxCentroyEspResult"
})
@XmlRootElement(name = "listarMedicoxCentroyEspResponse")
public class ListarMedicoxCentroyEspResponse {

    @XmlElementRef(name = "listarMedicoxCentroyEspResult", namespace = "http://tempuri.org/", type = JAXBElement.class)
    protected JAXBElement<ArrayOfMedico> listarMedicoxCentroyEspResult;

    /**
     * Obtiene el valor de la propiedad listarMedicoxCentroyEspResult.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link ArrayOfMedico }{@code >}
     *     
     */
    public JAXBElement<ArrayOfMedico> getListarMedicoxCentroyEspResult() {
        return listarMedicoxCentroyEspResult;
    }

    /**
     * Define el valor de la propiedad listarMedicoxCentroyEspResult.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link ArrayOfMedico }{@code >}
     *     
     */
    public void setListarMedicoxCentroyEspResult(JAXBElement<ArrayOfMedico> value) {
        this.listarMedicoxCentroyEspResult = value;
    }

}
