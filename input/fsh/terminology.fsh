//////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////Secciones///////////////////////////////////////////

CodeSystem: CSSecciones
Id: CSSecciones
Title: "Secciones"
Description: "Código de los tipos de secciones"
* ^caseSensitive = true 
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2022-01-18T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

//Código / display / descripción
* #001 "Anammesis" " "
* #002 "Parametros fisiologicos" " "
* #003 "Diagnostico principal" " "
* #004 "Procedimientos" " "
* #005 "Tratamientos farmacologicos" " "
* #006 "Diagnostico secundario" " "
* #007 "Informe de resultados" " "


ValueSet: VSSecciones
Id: VSSecciones
Title: "Secciones"
Description: "Value set con la tabla de sexos"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2022-01-18T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* codes from system CSSecciones

//////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////Tipo de observación//////////////////////////////////////

CodeSystem: CSTipoObservacion
Id: CSTipoObservacion
Title: "Tipos de observación"
Description: "Tipo de observación"
* ^caseSensitive = true 
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2022-01-18T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

//Código / display / descripción
* #011 "Anammesis" " "
* #022 "Parametros fisiologicos" " "



ValueSet: VSTipoObservacion
Id: VSTipoObservacion
Title: "Tipo de observación"
Description: "Value set tipo de observación"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2022-01-18T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* codes from system CSTipoObservacion