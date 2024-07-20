Profile: TratamientoFarmacologico
Parent: MedicationAdministration
Description: "Tratamiento farmacológico administrado al paciente"

* status 1..1

* medicationCodeableConcept 1..1
  * coding 1..1
    * code 1..1
    * code from VSPrincipioActivo
      * ^short = "Código de principio activo" 

* subject only Reference(Paciente)

* effectivePeriod 1..1
  * start	0..1 
    * ^short = "Fecha de inicio de tratamiento farmacológico"
  * end 0..1
    * ^short = "Fecha de termino de tratamiento farmacológico"

* dosage 0..1
  * route 0..1 
    * ^short = "Vía de administración"
    * coding 1..1
      * code 1..1
      * code from VSViaAdministracion
  * dose 0..1
    * value 0..1
      * ^short = "Dosis a administrar"
  * method 0..1
    * ^short = "Forma farmaceutica"
    * coding 1..1
      * code 1..1
      * code from VSUnidadAsistencial