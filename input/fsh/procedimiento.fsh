Profile: Procedimiento
Parent: Procedure 
Description: "Procedimientos clínicos"

* status 1..1

* subject only Reference(Paciente)

* code 1..1
* code from VSParametro
  * coding 0..*
    * code 0..1
  * text 0..1