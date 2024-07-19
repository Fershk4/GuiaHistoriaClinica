Profile: DocumentoClinico
Parent: Composition
Id: DocumentoClinico
Title: "Tributación y Consumo de Documentos Clínicos en Atención Ambulatoria"
Description: "Tributación y consumo de documentos clínicos de la historia clínica del paciente generados en la la atención ambulatoria."

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
* section.text 1.. MS
* section.section ..0

//--------- Secciones ---------*/
* section contains
    sectionAnammesis 0.. MS and
    sectionParametrosFisiologicos 1..1 MS and
    sectionDiagnostico 0..1 MS and
    sectionProcedimientos 0..1 MS and
    sectionTratamientosFarmacologicos 0.. MS and
    sectionInformeDeResultados 0..1 MS 

/*------------ Anammesis ------------*/    
* section[sectionAnammesis] 
  * ^short = "Sección de medicamentos administrados"
  * ^definition = "Listado de medicamentos administrados en el perído medido."
  * title 1..1
  * text 1..1
  * code from VSSecciones
    * coding 0..1
      * code = #001
  * entry only Reference(ObservacionAnamnesis)
  * entry ^short = "Medicamentos administrados"
  * entry ^definition = "Es el listado de medicamentos administrados para el paciente."
 

/*------------ Parametros Fisiologicos------------*/
* section[sectionParametrosFisiologicos]
  * ^short = "Sección de Porcentaje de Adherencia"
  * ^definition = "Porcentaje de adherencia de los medicamentos administrados por el dispositivo"
  * title 1..1
  * text 1..1
  * code from VSSecciones
    * coding 0..1
      * code = #002
  * entry only Reference(ObservacionParametros)
  * entry ^short = "Parámetros fisiológicos"
  * entry ^definition = "Parámetros fisiológicos del paciente"

/*------------ Diagnostico ------------*/
* section[sectionDiagnostico] 
  * ^short = "Sección de Porcentaje de Adherencia"
  * ^definition = "Porcentaje de adherencia de los medicamentos administrados por el dispositivo"
  * title 1..1
  * text 1..1
  * code from VSSecciones
    * coding 0..1
      * code = #003
  * entry only Reference(ObservacionDiagnostico)
  * entry ^short = "Diagnostico"
  * entry ^definition = "Parámetros fisiológicos del paciente"

  
 /*------------ Procedimientos------------*/
* section[sectionProcedimientos] 
  * ^short = "Sección de Porcentaje de Adherencia"
  * ^definition = "Porcentaje de adherencia de los medicamentos administrados por el dispositivo"
  * title 1..1
  * text 1..1
  * code from VSSecciones
    * coding 0..1
      * code = #004
  * entry only Reference(Procedimiento)
  * entry ^short = "Procedimientos"
  * entry ^definition = "Procedimientos realizados al paciente"

    /*------------ Tratamientos Farmacologicos------------*/
* section[sectionTratamientosFarmacologicos]
  * ^short = "Sección de Porcentaje de Adherencia"
  * ^definition = "Porcentaje de adherencia de los medicamentos administrados por el dispositivo"
  * title 1..1
  * text 1..1
  * code from VSSecciones
    * coding 0..1
      * code = #005
  * entry only Reference(TratamientoFarmacologico)
  * entry ^short = "Tratamiento farmacológico"
  * entry ^definition = "Tratamiento farmacológico recetado paciente"


    /*------------ Informe de resultados------------*/
* section[sectionInformeDeResultados]
  * ^short = "Sección de Porcentaje de Adherencia"
  * ^definition = "Porcentaje de adherencia de los medicamentos administrados por el dispositivo"
  * title 1..1
  * text 1..1
  * code from VSSecciones
    * coding 0..1
      * code = #006
