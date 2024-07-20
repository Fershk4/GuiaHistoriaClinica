Instance: EjemploProcedimiento
Title: "Ejemplo procedimientos"
Description: "Ejemplo de procedimientos realizados al paciente"
InstanceOf: Procedimiento
Usage: #example

* status = #completed

* code.coding.system = "https://biomedica.uv.cl/fhir/guiahistoriaclinica/CodeSystem/CSTipoProcedimiento"
* code.coding.code = #444

* code.text = "Al paciente se le hizo una cirugía del dedo meñique del pie"

* subject = Reference(EjemploPaciente)