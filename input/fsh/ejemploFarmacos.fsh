Instance: EjemploFarmacos
Title: "Ejemplo tratamiento farmacológico"
Description: "Ejemplo de tratamiento farmacológico administrado al paciente"
InstanceOf: TratamientoFarmacologico
Usage: #example

* status = #completed

//Principio activo
* medicationCodeableConcept.coding.system = "https://biomedica.uv.cl/fhir/guiahistoriaclinica/CodeSystem/CSPrincipioActivo"
* medicationCodeableConcept.coding.code = #800

* subject = Reference(EjemploPaciente)

//Duración de tratamiento farmacológico
* effectivePeriod.start = 2024-03-02T16:00:00.000Z
* effectivePeriod.end = 2024-03-07T16:00:00.000Z

// Vía de administración
* dosage.route.coding.system = "https://biomedica.uv.cl/fhir/guiahistoriaclinica/CodeSystem/CSViaAdministracion"
* dosage.route.coding.code = #26643006

//Dósis
* dosage.dose.value = 1.2

//Forma farmaceútica
* dosage.method.coding.system = "https://biomedica.uv.cl/fhir/guiahistoriaclinica/CodeSystem/CSUnidadAsistencial"
* dosage.method.coding.code = #comprimido
