Profile: ObservacionDiagnostico
Parent: Observation
Description: "Parámetros fisiologicos del paciente"

* status 1..1

// Diagnostico principal 
* code 1..1
* code from VSTipoDiagnostico
  * coding 0..*
    * code 0..1
  * text
* valueString 0..1

// Diagnostico secundario
* component
  * code from VSTipoDiagnostico
    * coding 0..*
      * code 0..1
  * valueString 0..1