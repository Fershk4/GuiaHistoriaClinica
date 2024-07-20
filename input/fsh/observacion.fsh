Profile: ObservacionParametros
Parent: Observation
Description: "Parámetros fisiologicos del paciente"

* status 1..1

* category 0..*
* category from http://hl7.org/fhir/ValueSet/observation-category
  * coding 0..*
    * code 0..1 
    * system = "http://terminology.hl7.org/CodeSystem/observation-category"

* code 1..1
* code from VSTipoObservacion
  * coding 0..*
    * code 0..1

* component 0..*
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[=].path = "code"
* component ^slicing.ordered = false
* component ^slicing.rules = #open

* component ^short = "Variables medidas"
* component ^definition = "Variables medidas"
* component.code 1..1
* component.code from VSParametro
//--------- Componentes ---------*/
* component contains talla 0..* and peso 0..* and presionS 0..* and presionD 0..* and temp 0..* and FC 0..* and RF 0..*

* component[talla] 0..*
  * ^short = "Talla"
  * ^definition = "Listado de medicamentos administrados en el perído medido."
  * code 1..1
    * coding 0..*
      * code 0..1
      * code = #8302-2 

  * valueQuantity 0..1
    * value 0..1
    * unit 0..1         
    //* system 0..1    
    //* code 0..1      

* component[peso] 0..*
  * ^short = "Peso"
  * ^definition = "Listado de medicamentos administrados en el perído medido."
  * code 1..1
    * coding 0..*
      * code 0..1
      * code = #29463-7 

  * valueQuantity 0..1
    * value 0..1
    * unit 0..1          
    //* system 0..1             
    //* code 0..1       

* component[presionS] 0..*
  * ^short = "Presión sitólica"
  * ^definition = "Listado de medicamentos administrados en el perído medido."
  * code 1..1
    * coding 0..*
      * code 0..1 
      * code = #8480-6 
    
  * valueQuantity 0..1
    * value 0..1
    * unit 0..1          
    //* system 0..1             
    //* code 0..1       

* component[presionD] 0..*
  * ^short = "Presión diastólica"
  * ^definition = "Listado de medicamentos administrados en el perído medido."
  * code 1..1
    * coding 0..*
      * code 0..1 
      * code = #8462-4 
    
  * valueQuantity 0..1
    * value 0..1
    * unit 0..1          
    //* system 0..1             
    //* code 0..1       

* component[temp] 0..*
  * ^short = "Temperatura"
  * ^definition = "Listado de medicamentos administrados en el perído medido."
  * code 1..1
    * coding 0..1
      * code 0..1 
      * code = #8310-5 
    
  * valueQuantity 0..1
    * value 0..1
    * unit 0..1          
    //* system 0..1             
    //* code 0..1       

* component[FC] 0..*
  * ^short = "Frecuencia cardiaca"
  * ^definition = "Listado de medicamentos administrados en el perído medido."
  * code 1..1
    * coding 0..*
      * code 0..1
      * code = #8867-4 
    
  * valueQuantity 0..1
    * value 0..1
    * unit 0..1          
    //* system 0..1             
    //* code 0..1  

* component[RF] 0..*
  * ^short = "Frecuencia respiratoria"
  * ^definition = "Listado de medicamentos administrados en el perído medido."
  * code 1..1
    * coding 0..*
      * code 0..1  
      * code = #9279-1 
    
  * valueQuantity 0..1
    * value 0..1
    * unit 0..1          
    //* system 0..1             
    //* code 0..1            