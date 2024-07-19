Profile: ObservacionAnamnesis
Parent: Observation
Description: "Anamnesis del paciente"

* code 1..1
  * ^short = "Código de anamnesis" 
  * coding 1..1
    * code 1..1
      * ^short = "Código de anamnesis" 
  * text 0..1
    * ^short = "Anamnesis" 

* status 1..1 

* valueString 1..1
  * ^short = "Anamnesis" 