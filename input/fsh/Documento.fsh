Profile: DocumentoClinico
Parent: Composition
Id: DocumentoClinico
Title: "Tributación y Consumo de Documentos Clínicos en Atención Ambulatoria"
Description: "Documentos clínicos de historia clínica del paciente en la atención ambulatoria."

//ID Doc
* identifier 1..1  //
  * ^short = "Identificador local para recurso de documeto que puede ser distinto para cada versión del mismo"
  * ^definition = "Identificador para el recurso que contiene documento, puede ser usado de manera local. Este idetificador es independiente de la versión del documento"

//Status
* status 
  * ^short = "Estado, valores posibles: preliminary | final | amended | entered-in-error"
  * ^definition = "Estado del documento"
* status = #final
* status from http://hl7.org/fhir/ValueSet/composition-status

//Code
//--- Código Loinc de tipo de documento ----
* type from http://hl7.org/fhir/ValueSet/doc-typecodes (required)
* type 1..1
  * ^short = "Tipo de Documento según especificación de LOINC (Ej para Summarie IPS Loinc = #60591-5"
  * ^definition = "Especifica el tipo de documento al que refiere este Recurso. Si se desea ajustar a IPS debe ser un resumen con código LOINC 60591-5"
  * coding 1..1
    * code = #18842-5 
      * ^short = "Documento de resumen de alta"

// Confidencialidad 
* confidentiality 1..1

//* ---- Titulo de documento ----- *
* title MS
* title ^short = "Título del documento generado"
* title ^definition = "Título oficial del documento para que pueda ser legible."
* title = "Documento de adherencia farmacológica"

//Hora efectiva
//* --- Fecha -----
* date MS //
  * ^short = "Fecha en la cual se editó el documento"
  * ^definition = "Fecha de edición del documento, cuando este fue modificado por el autor"

//Autor
* author 1..*
* author only Reference(Paciente)


//Organización 
* custodian 0..1
* custodian only Reference(Organizacion)

//--------- Seccion ---------*/
* section 1..*
* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[=].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open

* section ^short = "Sección del documento"
* section ^definition = "Sección de datos del paciente"

* section.code 1.. MS
* section.code from VSSecciones
//* section.text 1.. MS
//* section.section ..0

//--------- Secciones ---------*/
* section contains
    sectionAnammesis 1..* MS and
    sectionParametrosFisiologicos 1..* MS and
    sectionDiagnostico 1..* MS and
    sectionProcedimientos 1..* MS and
    sectionTratamientosFarmacologicos 1..* MS and
    sectionInformeDeResultadosLaboratorio 1..* MS and
    sectionInformeDeResultadosImagenes 1..* MS and
    sectionInformeDeResultadosProcedimientos 1..* MS and
    sectionInformeDeResultadosTratamientoNoFarmacologico 1..* MS 

/*------------ Anammesis ------------*/    
* section[sectionAnammesis] 1..*
  * ^short = "Sección de medicamentos administrados"
  * ^definition = "Sección de medicamentos administrados."
  * title 1..1
  //* text 1..1
  * code from VSSecciones
    * coding 0..1
      * code = #001
  * entry only Reference(ObservacionAnamnesis)
  * entry ^short = "Medicamentos administrados"
  * entry ^definition = "Es el listado de medicamentos administrados para el paciente."
 

/*------------ Parametros Fisiologicos------------*/
* section[sectionParametrosFisiologicos] 1..*
  * ^short = "Sección parametros fisiológicos"
  * ^definition = "Sección parametros fisiológicos"
  * title 1..1
  //* text 1..1
  * code from VSSecciones
    * coding 0..1
      * code = #002
  * entry only Reference(ObservacionParametros)
  * entry ^short = "Parámetros fisiológicos"
  * entry ^definition = "Parámetros fisiológicos del paciente"

/*------------ Diagnostico ------------*/
* section[sectionDiagnostico] 1..*
  * ^short = "Sección de Diagnostico"
  * ^definition = "Sección de Diagnostico"
  * title 1..1
  //* text 1..1
  * code from VSSecciones
    * coding 0..1
      * code = #003
  * entry only Reference(ObservacionDiagnostico)
  * entry ^short = "Diagnostico"
  * entry ^definition = "Parámetros fisiológicos del paciente"

  
 /*------------ Procedimientos------------*/
* section[sectionProcedimientos] 1..*
  * ^short = "Sección de Procedimientos"
  * ^definition = "Sección de Procedimientos"
  * title 1..1
  //* text 1..1
  * code from VSSecciones
    * coding 0..1
      * code = #004
  * entry only Reference(Procedimiento)
  * entry ^short = "Procedimientos"
  * entry ^definition = "Procedimientos realizados al paciente"

    /*------------ Tratamientos Farmacologicos------------*/
* section[sectionTratamientosFarmacologicos] 1..*
  * ^short = "Sección de tratamiento famacológico"
  * ^definition = "Sección de tratamiento famacológico"
  * title 1..1
  //* text 1..1
  * code from VSSecciones
    * coding 0..1
      * code = #005
  * entry only Reference(TratamientoFarmacologico)
  * entry ^short = "Tratamiento farmacológico"
  * entry ^definition = "Tratamiento farmacológico recetado paciente"


    /*------------ Informe de resultado laboratorio------------*/
* section[sectionInformeDeResultadosLaboratorio] 1..*
  * ^short = "Sección de Informe de resultados"
  * ^definition = "Porcentaje de adherencia de los medicamentos administrados por el dispositivo"
  * title 1..1
  //* text 1..1
  * code from VSSecciones
    * coding 0..1
      * code = #006

    /*------------ Informe de resultados imágenes------------*/
* section[sectionInformeDeResultadosImagenes] 1..*
  * ^short = "Sección de Informe de resultados"
  * ^definition = "Porcentaje de adherencia de los medicamentos administrados por el dispositivo"
  * title 1..1
  //* text 1..1
  * code from VSSecciones
    * coding 0..1
      * code = #007

    /*------------ Informe de resultados procedimientos------------*/
* section[sectionInformeDeResultadosProcedimientos] 1..*
  * ^short = "Sección de Informe de resultados"
  * ^definition = "Porcentaje de adherencia de los medicamentos administrados por el dispositivo"
  * title 1..1
  //* text 1..1
  * code from VSSecciones
    * coding 0..1
      * code = #008

    /*------------ Informe de resultados tratamiento no farmacológico------------*/
* section[sectionInformeDeResultadosTratamientoNoFarmacologico] 1..*
  * ^short = "Sección de Informe de resultados"
  * ^definition = "Porcentaje de adherencia de los medicamentos administrados por el dispositivo"
  * title 1..1
  //* text 1..1
  * code from VSSecciones
    * coding 0..1
      * code = #009


