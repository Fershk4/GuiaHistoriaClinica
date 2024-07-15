Alias: $loinc = CSSeccion

Profile: DocumentoClinico
Parent: Composition
Id: DocumentoClinico
Title: "Tributación y Consumo de Documentos Clínicos en Atención Ambulatoria"
Description: "Tributación y consumo de documentos clínicos de la historia clínica del paciente generados en la la atención ambulatoria."

* text 
//* identifier MS

* identifier 1..1  
  * ^short = "Identificador local para recurso de documeto que puede ser distinto para cada versión del mismo"
  * ^definition = "Identificador para el recurso que contiene documento, puede ser usado de manera local. Este idetificador es independiente de la versión del documento"

* status 
  * ^short = "Estado, valores posibles: preliminary | final | amended | entered-in-error"
  * ^definition = "Estado del documento"
* status = #final
* status from http://hl7.org/fhir/ValueSet/composition-status


//--- loinc que representa el tipo de documento ----
* type from http://hl7.org/fhir/ValueSet/doc-typecodes (required)
* type 0..1
  * ^short = "Tipo de Documento según especificación de LOINC (Ej para Summarie IPS Loinc = #60591-5"
  * ^definition = "Especifica el tipo de documento al que refiere este Recurso. Si se desea ajustar a IPS debe ser un resumen con código LOINC 60591-5"
  * coding 1..1
    * code = #56445-0

//* ---- Paciente ----- 
//* subject 1..
//* subject only Reference(PacienteTake)
//* subject MS
//* subject ^definition = "Paciente sobre el cual se ha generado este documento."
//* subject ^short = "Paciente sobre el cual se ha generado este documento."
//* subject.reference 1..1 MS
//* subject.reference ^short = "Corresponde al paciente"



//* --- Fecha -----
* date MS
  * ^short = "Fecha en la cual se editó el documento"
  * ^definition = "Fecha de edición del documento, cuando este fue modificado por el autor"

//* encounter
//* encounter 0..1 MS
//  * ^short = "Encuentro clínico en elm cual se desarrolló el documento"
//  * display 1..1 MS
//  * ^short = "texto que describe el encuentro"



// Validador

//* event 1..1 MS
//* event ^short = "Descripción del acto clínico"
//  * period 1..1 MS
//  * period ^short = "Período en el cual el documento tiene validez"



* section 1.. MS
* section ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section ^extension[=].valueString = "Section"
* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[=].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open


* section ^short = "Sección del documento"
* section ^definition = "Sección de notificación de datos clínicos."

* section.code 1.. MS
* section.code from VSSeccion (extensible)
* section.text 1.. MS
* section.section ..0

//--------- Secciones 
* section contains
    sectionMedicamentosEntregados 0.. MS and
    sectionPorcentajeAdherencia 1..1 MS and
    sectionCantidadMedicamentos 0..1 MS and
    sectionTiempoAtrasoToma 0..1 MS and
    sectionNumeroOlvidos 0..1 MS and
    sectionMedicamentosRestantes 0.. MS and
    sectionTestMorisky 0..1 MS 

/*------ 1. Medicamentos Administrados ------------*/    
* section[sectionMedicamentosEntregados] obeys take-comp-1
  * ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
  * ^extension[=].valueString = "Section"
  * ^short = "Sección de medicamentos administrados"
  * ^definition = "Listado de medicamentos administrados en el perído medido."
  * title 1.. MS
  * code = $loinc#87232-5
  * entry only Reference(MedicationAdministration)
  * entry MS
  * entry ^slicing.discriminator[0].type = #profile
  * entry ^slicing.discriminator[=].path = "resolve()"
  * entry ^slicing.rules = #open
  * entry ^short = "Medicamentos administrados"
  * entry ^definition = "Es el listado de medicamentos administrados para el paciente."
  * entry contains MedAdministrados 0..* MS
  * entry[MedAdministrados] only Reference(MedicationAdministrationTake)


/*------ 2. Porcentaje Adherencia------------*/
* section[sectionPorcentajeAdherencia] obeys take-comp-1
  * ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
  * ^extension[=].valueString = "Section"
  * ^short = "Sección de Porcentaje de Adherencia"
  * ^definition = "Porcentaje de adherencia de los medicamentos administrados por el dispositivo"
  * title 1.. MS

  * code = $loinc#96385-0
  * entry only Reference(Observation)
  * entry MS
  * entry ^slicing.discriminator[0].type = #profile
  * entry ^slicing.discriminator[=].path = "resolve()"
  * entry ^slicing.rules = #open
  * entry ^short = "Porcentaje total de Adherencia"
  * entry ^definition = "El porcentaje de adherencia medido en el periodp observado para este indorme"
  * entry contains PAdherencia 0..* MS
  * entry[PAdherencia] only Reference(ObservacionPAderencia)

