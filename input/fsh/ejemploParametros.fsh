Instance: EjemploObservacionParametros
Title: "Ejemplo de parámetros fisiológicos"
Description: "Ejemplo de parámetros fisiológicos del paciente"
InstanceOf: ObservacionParametros
Usage: #example

////////// No supe hacer bien este ejemplo y está lleno de errores //////////////

* status = #registered

* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
    
* code.coding.system = "https://biomedica.uv.cl/fhir/guiahistoriaclinica/CodeSystem/CSTipoObservacion"
* code.coding.code = #022

//Talla
* component[talla].code.coding.system = "https://biomedica.uv.cl/fhir/guiahistoriaclinica/CodeSystem/CSParametro"
* component[talla].code.coding.code = #8302-2
* component[talla].valueQuantity.value = 1.67
* component[talla].valueQuantity.unit = "m"
//* component[talla].valueQuantity.system = "https://biomedica.uv.cl/fhir/guiahistoriaclinica/CodeSystem/CSTipoUnidad"
//* component[talla].valueQuantity.code = #m

//Peso
* component[peso].code.coding.system = "https://biomedica.uv.cl/fhir/guiahistoriaclinica/CodeSystem/CSParametro"
* component[peso].code.coding.code = #29463-7
* component[peso].valueQuantity.value = 65.51
* component[peso].valueQuantity.unit = "kg"
//* component[peso].valueQuantity.system = "https://biomedica.uv.cl/fhir/guiahistoriaclinica/CodeSystem/CSTipoUnidad"
//* component[peso].valueQuantity.code = #kg

//Presión sistólica
* component[presionS].code.coding.system = "https://biomedica.uv.cl/fhir/guiahistoriaclinica/CodeSystem/CSParametro"
* component[presionS].code.coding.code = #8480-6
* component[presionS].valueQuantity.value = 130.4
* component[presionS].valueQuantity.unit = "mmHg"
//* component[presionS].valueQuantity.system = "https://biomedica.uv.cl/fhir/guiahistoriaclinica/CodeSystem/CSTipoUnidad"
//* component[presionS].valueQuantity.code = #mmhg      

//Presión diastólica
* component[presionD].code.coding.system = "https://biomedica.uv.cl/fhir/guiahistoriaclinica/CodeSystem/CSParametro"
* component[presionD].code.coding.code = #8462-4
* component[presionD].valueQuantity.value = 90.7
* component[presionD].valueQuantity.unit = "mmHg"
//* component[presionD].valueQuantity.system = "https://biomedica.uv.cl/fhir/guiahistoriaclinica/CodeSystem/CSTipoUnidad"
//* component[presionD].valueQuantity.code = #mmhg     

//Temperatura
* component[temp].code.coding.system = "https://biomedica.uv.cl/fhir/guiahistoriaclinica/CodeSystem/CSParametro"
* component[temp].code.coding.code = #8310-5
* component[temp].valueQuantity.value = 36.4
* component[temp].valueQuantity.unit = "°C"
//* component[temp].valueQuantity.system = "https://biomedica.uv.cl/fhir/guiahistoriaclinica/CodeSystem/CSTipoUnidad"
//* component[temp].valueQuantity.code = #C        

//Freciencia cardiaca
* component[FC].code.coding.system = "https://biomedica.uv.cl/fhir/guiahistoriaclinica/CodeSystem/CSParametro"
* component[FC].code.coding.code = #8867-4
* component[FC].valueQuantity.value = 66
* component[FC].valueQuantity.unit = "lpm"
//* component[FC].valueQuantity.system = "https://biomedica.uv.cl/fhir/guiahistoriaclinica/CodeSystem/CSTipoUnidad"
//* component[FC].valueQuantity.code = #lmp

//Frecuencia respiratoria
* component[RF].code.coding.system = "https://biomedica.uv.cl/fhir/guiahistoriaclinica/CodeSystem/CSParametro"
* component[RF].code.coding.code = #9279-1
* component[RF].valueQuantity.value = 21
* component[RF].valueQuantity.unit = "rpm"
//* component[RF].valueQuantity.system = "https://biomedica.uv.cl/fhir/guiahistoriaclinica/CodeSystem/CSTipoUnidad"
//* component[RF].valueQuantity.code = #rpm

// Fecha de adquisición de parámetros
* effectiveDateTime = 2024-03-02T09:15:00.000Z

* subject = Reference(EjemploPaciente)
* performer = Reference(EjemploOrganizacion)