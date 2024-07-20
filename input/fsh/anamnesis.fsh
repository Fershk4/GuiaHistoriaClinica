Profile: ObservacionAnamnesis
Parent: Observation
Description: "Anamnesis del paciente"

//Tipo de observación
* code 1..1
  * ^short = "Código de anamnesis" 
  * coding 1..1
    * code 1..1
      * ^short = "Código de anamnesis" 

* status 1..1 

//Fecha de la anamnesis
* effectivePeriod 0..1
  * start	0..1 
    * ^short = "Fecha de inicio de la observación"
  * end 0..1
    * ^short = "Fecha de termino de la observación"

//Anamnesis
* valueString 1..1
  * ^short = "Anamnesis" 

* subject only Reference (Paciente)
  * ^short = "Datos del paciente"

* performer only Reference (Organizacion)
  * ^short = "Datos del laboratorio"