Profile: Organizacion
Parent: Organization
Description: "Organización"

// Código de laboratorio
* identifier 1..1 
  * ^short = "Código de identificación del laboratorio"
  * value 1..1

//////// Otra institución ////////
// Nombre del laboratorio 
* name 0..1
  * ^short = "Nombre del laboratorio"

//Tipo de institución
* type 0..1
  * ^short = "Tipo de institución"
  * coding 0..1
    * code 0..1
    