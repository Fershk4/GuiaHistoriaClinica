Instance: EjemploDiagnostico
Title: "Ejemplo de diagnosticos"
Description: "Ejemplo de diagnosticos del paciente"
InstanceOf: ObservacionDiagnostico
Usage: #example

* status = #registered

// Diagnostico principal 
* code.coding.system = "https://biomedica.uv.cl/fhir/guiahistoriaclinica/CodeSystem/CSTipoDiagnostico"
* code.coding.code = #363746003

* valueString = "El paciente posee una faringitis aguda"

// Diagnostico secundario
* component
* component.code.coding.system = "https://biomedica.uv.cl/fhir/guiahistoriaclinica/CodeSystem/CSTipoDiagnostico"
* component.code.coding.code = #4556007

* component.valueString = "Además el paciente tiene sintomas de tener gastritis"

// Fecha de diagnostico
* effectiveDateTime = 2024-03-02T09:15:00.000Z


* subject = Reference(EjemploPaciente)
* performer = Reference(EjemploOrganizacion)