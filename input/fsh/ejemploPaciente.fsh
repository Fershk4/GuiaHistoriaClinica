Instance: EjemploPaciente
Title: "Ejemplo de paciente"
Description: "Ejemplo de los datos del paciente"
InstanceOf: Paciente
Usage: #example

//Identificación 
* identifier.value = "22306330"
* identifier.type.coding.code = #808078
* identifier.type.coding.system = "https://biomedica.uv.cl/fhir/guiahistoriaclinica/CodeSystem/CSIdentificacion"

//Nombre
* name.given = "Karla" 
* name.family = "Jimenez"
* name.family.extension[segundoApellido].url = "http://hl7.org/fhir/StructureDefinition/humanname-mothers-family"
* name.family.extension[segundoApellido].valueString = "Retamal"

// Fecha de nacimiento
* birthDate = 2002-09-09
