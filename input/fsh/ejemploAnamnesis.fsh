Instance: EjemploAnamnesis
Title: "Ejemplo Anamnesis"
Description: "Ejemplo de anamnesis del paciente"
InstanceOf: ObservacionAnamnesis
Usage: #example

//Código de que se trata de una anamnesis
* code.coding.system = "https://biomedica.uv.cl/fhir/guiahistoriaclinica/CodeSystem/CSTipoObservacion"
* code.coding.code = #84100007

//Estado
* status = #registered

//Anamnesis escrita
* valueString = "Paciente padece de malestar estomacal en conjunto de dolor de garganta, tiene 38 de fiebre y vomitos"

// Fecha de anamnesis
* effectivePeriod.start = 2024-03-02T09:15:00.000Z
* effectivePeriod.end = 2024-03-02T09:15:00.000Z

* subject = Reference(EjemploPaciente)
* performer = Reference(EjemploOrganizacion)