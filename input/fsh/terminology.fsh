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
* #003 "Diagnostico" " "
* #004 "Procedimientos" " "
* #005 "Tratamientos farmacologicos" " "
* #006 "Informe de resultados" " "


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

//////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////Tipo de parámetro//////////////////////////////////////

CodeSystem: CSParametro
Id: CSParametro
Title: "Parámetros fisiologicos"
Description: "Parámetros fisiologicos del paciente"
* ^caseSensitive = true 
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2022-01-18T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

//* codes from system https://loinc.org where concept is-a #8302-2
//* codes from system https://loinc.org where concept is-a #29463-7
//* codes from system https://loinc.org where concept is-a #8480-6
//* codes from system https://loinc.org where concept is-a #8462-4
//* codes from system https://loinc.org where concept is-a #8310-5
//* codes from system https://loinc.org where concept is-a #8867-4
//* codes from system https://loinc.org where concept is-a #9279-1

//Código / display / descripción
* #8302-2 "Talla" " "
* #29463-7 "Peso" " "
* #8480-6 "Presión sistólica" " "
* #8462-4 "Presión diastolica" " "
* #8310-5 "Temperatura" " "
* #8867-4 "Frecuencia cardiaca" " "
* #9279-1 "Frecuencia respiratoria" " "

ValueSet: VSParametro
Id: VSParametro
Title: "Parámetros fisiológios registrados"
Description: "Parámetros fisiológios registrado"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2022-01-18T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* codes from system CSParametro


//////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////Tipo de diagnostico//////////////////////////////////////

CodeSystem: CSTipoDiagnostico
Id: CSTipoDiagnostico
Title: "Tipos de diagnostico"
Description: "Tipo de diagnostico"
* ^caseSensitive = true 
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2022-01-18T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

//* codes from system http://snomed.info/sct
//Código / display / descripción
* #830 "Diagnostico principal" " "
* #294 "Diagnostico secundario" " "

ValueSet: VSTipoDiagnostico
Id: VSTipoDiagnostico
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

* codes from system CSTipoDiagnostico


//////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////Tipo de identificación///////////////////////////////////////

CodeSystem: CSIdentificacion 
Id: CSIdentificacion
Title: "Tipo de identificador"
Description: "Tipo de identificador"
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
* #666784 "Certificado de nacimiento" " "
* #679000 "Tarjeta de ciudadanía" " "
* #687600 "Licencia de conducir" " "
* #688000 "Pasaporte diplomático" " "
* #778200 "Número de historia clínica" " "
* #808078 "Identificador individual único nacional (RUN)" " "
* #787300 "Número de Seguro Social" " "
* #836873 "Número de Seguro Social" " "
* #787380 "Rol Único Nacional Provisorio" " "


ValueSet: VSTipoIdentificacion 
Id: VSTipoIdentificacion
Title: "Tipo de identificador"
Description: "Value set con códigos de tipo de identificador"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2022-01-18T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* codes from system CSIdentificacion

//////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////Principios activos///////////////////////////////////////

CodeSystem: CSPrincipioActivo
Id: CSPrincipioActivo
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
* #100 "Alprazolam" " "
* #200 "Diazepam" " "
* #300 "Atenolol" " "
* #400 "Enalapril" " "
* #500 "Maleato" " "
* #600 "Propanolol" " "
* #700 "Ibuprofeno" " "
* #800 "Salbutamol" " "
* #900 "Darunavir etanolato" " "
* #001 "Espirinolactona" " "
* #110 "Hidroclorotiazida" " "
* #120 "Fluoxetina clorhidrato" " "
* #130 "Tamoxifeno citrato" " "

ValueSet: VSPrincipioActivo
Id: VSPrincipioActivo
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

* codes from system CSPrincipioActivo

//////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////Unidad asistencial///////////////////////////////////////

CodeSystem: CSUnidadAsistencial
Id: CSUnidadAsistencial
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
* #mililitro "Mililitro" " "
* #comprimido "Comprimido" " "
* #miligramo "Miligramo" " "
* #unidades "Unidades" " "
* #capsula "Cápsula" " "
* #aplicacion "Aplicación" " "
* #supositorio "Supositorio" " "
* #ampolla "Ampolla" " "
* #sobre "sobre" " "
* #gotas "Gotas" " "
* #dosis "Dosis" " "
* #aposito "Apósito" " "
* #parche "Parche" " "
* #microgramo "Microgramo" " "
* #frasco "Frasco" " "
* #unidades-internacionales "Unidades Internacionales" " "
* #puff "Puff" " "
* #bidon "Bidón" " "
* #bolsa "Bolsa" " "
* #gramo "Gramo" " "
* #dispositivo "Dispositivo" " "
* #ovulo "Óvulo" " "
* #vial "Vial" " "
* #implante "Implante" " "
* #anillo-vaginal "Anillo Vaginal" " "
* #chicle "Chicle" " "
* #tarro "Tarro" " "
* #aplicador "Aplicador" " "
* #jeringa-prellenada "Jeringa Prellenada" " "
* #gragea "Gragea" " "
* #cartucho "Cartucho" " "
* #globulo "Glóbulo" " "


ValueSet: VSUnidadAsistencial
Id: VSUnidadAsistencial
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

* codes from system CSUnidadAsistencial

//////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////Vía de administracion//////////////////////////////////////

CodeSystem: CSViaAdministracion
Id: CSViaAdministracion
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
* #26643006 "vía Oral route (calificador)" " "
* #46713006 "vía de administración en cavidad nasal (calificador)" " "
* #404820008 "vía de administración en el espacio epidural que rodea a la duramadre (calificador)" " "
* #418136008 "vía de administración a través de estoma gastrointestinal (calificador)" " "
* #127490009 "vía de administración a través de gastrostomía (calificador)" " "
* #127491008 "vía de administración a través de yeyunostomía (calificador)" " "
* #58100008 "vía de administración intrarterial (calificador)" " "
* #12130007 "vía de administración en una articulación (calificador)" " "
* #372461007 "vía de administración en lesión cavernosa (calificador)" " "
* #372461008 "vía de administración en lesión cavernosa (calificador)" " "
* #372464004 "vía de administración en la dermis (calificador)" " "
* #78421000 "vía de administración intramuscular (calificador)" " "
* #38239002 "vía de administración en la cavidad peritoneal (calificador)" ""
* #72607000 "vía de administración en el espacio subaracnoideo (calificador)" " "
* #418892005 "vía de administración en cisterna magna (calificador)" " "
* #420719007 "vía de administración en ventrículo cerebral (calificador)" " "
* #62226000 "vía de administración en la cavidad uterina (calificador)" " "
* #47625008 "vía de administración intravenosa (calificador)" " "
* #372471009 "vía de administración en la cavidad de la vejiga (calificador)" " "
* #54485002 "vía de administración oftálmica (calificador)" " "
* #10547007 "vía de administración a través del oído (calificador)" " "
* #37161004	"vía de administración en el recto (calificador)" " "
* #127492001 "vía de administración a través de la nariz hasta el estómago (calificador)" " "
* #34206005	"vía de administración subcutánea (calificador)" " "
* #37839007	"vía de administración por debajo de la lengua (calificador)" " "
* #6064005 "vía de administración tópica (calificador)" " "
* #45890007	"vía de administración a través de la dermis (calificador)" " "
* #418511008 "vía de administración a través de la uretra (calificador)" " "
* #16857009	"vía de administración por la vagina (calificador)" " "
* #418722009 "vía de administración alrededor del globo ocular (calificador)" " "
* #419762003 "vía de administración alrededor de un tendón (calificador)" " "
* #418813001 "vía de administración a través de drenaje quirúrgico (calificador)" " "
* #372458006 "vía de administración en la cavidad amniótica (calificador)" " "
* #419894000 "vía de administración en cavidad quirúrgica (calificador)" " "
* #418162004 "vía de administración a través de colostomía (calificador)" " "
* #418418000 "vía de administración en columna vertebral (calificador)" " "
* #372460008 "vía de administración en el corazón (calificador)" " "
* #419243002 "vía de administración a través del cuello uterino (calificador)" " "
* #448598008 "vía de administración cutánea (calificador)" " "
* #445769006 "vía de administración en el cuerpo cavernoso (calificador)" " "
* #372449004 "vía de administración dental (calificador)" " "
* #372457001 "vía de administración en la encía (calificador)" " "
* #417985001 "vía de administración enteral (calificador)" " "
* #420163009 "vía de administración a través de esofagostomía (calificador)" " "
* #697971008 "vía de administración a través de fístula arteriovenosa (calificador)" " "
* #447121004 "vía de administración en la glándula mamaria (calificador)" " "
* #766790006 "vía de hemodiálisis extracorpórea (calificador)" " "
* #418401004 "vía de administración en el humor vítreo (calificador)" " "
* #419954003 "vía de administración a través de ileostomía (calificador)" " "
* #372459003 "vía de administración en una bolsa serosa (calificador)" " "
* #58771000052103 "vía intracolangiopancreática (calificador)" " "
* #429817007 "vía de administración en el intersticio de un tejido (calificador)" " "
* #418608002 "vía de administración en la córnea (calificador)" " "
* #711360002 "vía intraneural (calificador)" " "
* #446442000 "vía de administración a través de la placenta (calificador)" " "
* #60213007	"vía de administración en médula ósea (calificador)" " "
* #418730005 "vía de administración a través de la nariz hasta el yeyuno (calificador)" " "
* #428191002 "vía de administración a través de la piel (calificador)" " "
* #372474001 "vía de administración en tejidos que rodean una articulación (calificador)" " "
* #445771006 "vía de administración en pericardio (calificador)" " "
* #372475000 "vía de administración en el tejido que rodea a un nervio (calificador)" " "
* #420047004 "vía de administración en el periostio (calificador)" " "
* #372469009 "vía de administración en pleura o espacio pleural (calificador)" " "
* #418321004 "vía de administración retrobulbar (calificador)" " "
* #58831000052108 "vía subretiniana (calificador)" " "
* #447081004 "vía de administración en el tracto respiratorio inferior (calificador)" " "
* #447227007 "vía de administración a través del tímpano (calificador)" " "
* #447122006 "vía de administración en un tumor (calificador)" " "
* #420168000 "vía de administración a través urostomía (calificador)" " "
* #372463005 "vía de administración en vaso coronario (calificador)" " "
* #372467006 "vía de administración en vaso o ganglio linfático (calificador)" " "
* #404819002 "vía de administración en la bilis o las vías biliares (calificador)" " "


ValueSet: VSViaAdministracion
Id: VSViaAdministracion
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

* codes from system CSViaAdministracion