Profile: Paciente
Parent: Patient
Description: "Perfíl del paciente"

// Identificación y tipo de identificador 
* identifier 1..1 
  * type 1..1
  * type from VSTipoIdentificacion
    * ^short = "Tipo de identificador" 
    * coding 1..1
      * code 1..1
        * ^short = "Código de identificación" 
  * value 1..1
    * ^short = "Rut del paciente"

// Nombre, primer y segundo apellido
* name 1..*
  * ^short = "Nombre del paciente"
  //Profe si sé utilizar los definition pero sentí que no tenía suficiente información para hacerlos
  * ^definition = " "
  * family 1..1 
    * ^short = "Primer apellido"
    * extension contains http://hl7.org/fhir/StructureDefinition/humanname-mothers-family named segundoApellido 0..1
  * given 1..* 
    * ^short = "Nombre"

// Fecha de nacimiento
* birthDate 1..1 
  * ^short = "Fecha de nacimiento"


