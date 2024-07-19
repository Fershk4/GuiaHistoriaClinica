Profile: ObservacionParametros
Parent: Observation
Description: "Parámetros fisiologicos del paciente"

* status 1..1

* category 0..*
  * coding 0..*
    * code 0..1 
    * code from VSTipoObservacion

* code 1..1
  * coding 0..*
    * code 0..1
    * code from VSParametro

* component 1..*
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[=].path = "code"
* component ^slicing.ordered = false
* component ^slicing.rules = #open

* component ^short = "Variables medidas"
* component ^definition = "Variables medidas"

* component.code 1..1
* component.code from VSParametro

//--------- Secciones ---------*/
* component contains
    talla 0.. MS and
    peso 1..1 MS and
    presionS 0..1 MS and
    presionD 0..1 MS and
    temp 0..1 MS and
    FC 0.. MS and
    RF 0..1 MS 

* component[talla] 
  * ^short = "Sección de medicamentos administrados"
  * ^definition = "Listado de medicamentos administrados en el perído medido."
  * code 1..1
  * code from VSParametro
    * coding 0..1
      * code = #8302-2

  * valueQuantity 0..1
    * value 0..1
    * unit 0..1          // ": "kg",
    * system 0..1             // ": "http://unitsofmeasure.org",
    * code 0..1       // ": "kg"

* component[peso] 
  * ^short = "Sección de medicamentos administrados"
  * ^definition = "Listado de medicamentos administrados en el perído medido."
  * code 1..1
  * code from VSParametro
    * coding 0..1
      * code = #29463-7
    
  * valueQuantity 0..1
    * value 0..1
    * unit 0..1          
    * system 0..1             
    * code 0..1       

* component[presionS] 
  * ^short = "Sección de medicamentos administrados"
  * ^definition = "Listado de medicamentos administrados en el perído medido."
  * code 1..1
  * code from VSParametro
    * coding 0..1
      * code = #8480-6
    
  * valueQuantity 0..1
    * value 0..1
    * unit 0..1          
    * system 0..1             
    * code 0..1       

* component[presionD] 
  * ^short = "Sección de medicamentos administrados"
  * ^definition = "Listado de medicamentos administrados en el perído medido."
  * code 1..1
  * code from VSParametro
    * coding 0..1
      * code = #8462-4
    
  * valueQuantity 0..1
    * value 0..1
    * unit 0..1          
    * system 0..1             
    * code 0..1       

* component[temp] 
  * ^short = "Sección de medicamentos administrados"
  * ^definition = "Listado de medicamentos administrados en el perído medido."
  * code 1..1
  * code from VSParametro
    * coding 0..1
      * code = #8310-5
    
  * valueQuantity 0..1
    * value 0..1
    * unit 0..1          
    * system 0..1             
    * code 0..1       

* component[FC] 
  * ^short = "Sección de medicamentos administrados"
  * ^definition = "Listado de medicamentos administrados en el perído medido."
  * code 1..1
  * code from VSParametro
    * coding 0..1
      * code = #8867-4
    
  * valueQuantity 0..1
    * value 0..1
    * unit 0..1          
    * system 0..1             
    * code 0..1  

* component[RF] 
  * ^short = "Sección de medicamentos administrados"
  * ^definition = "Listado de medicamentos administrados en el perído medido."
  * code 1..1
  * code from VSParametro
    * coding 0..1
      * code = #9279-1
    
  * valueQuantity 0..1
    * value 0..1
    * unit 0..1          
    * system 0..1             
    * code 0..1            