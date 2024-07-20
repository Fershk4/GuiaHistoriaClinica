Instance: EjemploDocumento
Title: "Ejemplo de documento"
Description: "Ejemplo de documento"
InstanceOf: DocumentoClinico
Usage: #example

////////// No supe hacer bien este ejemplo y está lleno de errores //////////////

//ID Doc
* identifier.value = "10101010"
//Status
* status = #final

//Code
//--- Código Loinc de tipo de documento ----
* type.coding.code = #18842-5 


// Confidencialidad 
* confidentiality = #N

//* ---- Titulo de documento ----- *
* title = "Documento de adherencia farmacológica"

//Hora efectiva
//* --- Fecha -----
* date = 2024-03-02T09:15:00.000Z

//Autor
* author = Reference(EjemploPaciente)


//Organización 
* custodian = Reference(EjemploOrganizacion)


/*------------ Anammesis ------------*/    
* section[sectionAnammesis].title = "Anamnesis"
//* section[sectionAnammesis].text.status = #generated
//* section[sectionAnammesis].text.div = <Paciente padece de malestar estomacal en conjunto de dolor de garganta, tiene 38 de fiebre y vomitos>
* section[sectionAnammesis].code.coding.code = #001
* section[sectionAnammesis].entry = Reference(EjemploAnamnesis)

/*------------ Parametros Fisiologicos------------*/
* section[sectionParametrosFisiologicos].title = "Parametros Fisiologicos"
//* section[sectionParametrosFisiologicos].text.status =  #generated
//* section[sectionAnammesis].text.div = <   >
* section[sectionParametrosFisiologicos].code.coding.code = #002
* section[sectionParametrosFisiologicos].entry = Reference(EjemploObservacionParametros)

/*------------ Diagnostico ------------*/
* section[sectionDiagnostico].title = "Diagnostico"
//* section[sectionDiagnostico].text.status = #generated
//* section[sectionDiagnostico].text.div = <Faringitis aguda con gastritis>
* section[sectionDiagnostico].code.coding.code = #003
* section[sectionDiagnostico].entry = Reference(EjemploDiagnostico)

 /*------------ Procedimientos------------*/
* section[sectionProcedimientos].title = "Procedimientos"
//* section[sectionProcedimientos].text.status = #generated
//* section[sectionProcedimientos].text.div = <Extracción de mocos>
* section[sectionProcedimientos].code.coding.code = #004
* section[sectionProcedimientos].entry = Reference(EjemploProcedimiento)


    /*------------ Tratamientos Farmacologicos------------*/
* section[sectionTratamientosFarmacologicos].title = "Tratamiento farmacológico"
//* section[sectionTratamientosFarmacologicos].text.status = #generated
//* section[sectionTratamientosFarmacologicos].text.div = <Ibuprofeno cada 8 horas por 5 días>
* section[sectionTratamientosFarmacologicos].code.coding.code = #005
* section[sectionTratamientosFarmacologicos].entry = Reference(EjemploFarmacos)


    /*------------ Informe de resultado laboratorio------------*/
* section[sectionInformeDeResultadosLaboratorio].title = "Resultados de laboratorio"
//* section[sectionInformeDeResultadosLaboratorio].text.status = #generated
//* section[sectionInformeDeResultadosLaboratorio].text.div = <Todo normal>
* section[sectionInformeDeResultadosLaboratorio].code.coding.code = #006

    /*------------ Informe de resultados imágenes------------*/
* section[sectionInformeDeResultadosImagenes].title = " Resultado de imagenes médicas"
//* section[sectionInformeDeResultadosImagenes].text.status = #generated
//* section[sectionInformeDeResultadosImagenes].text.div = <Todo normal>
* section[sectionInformeDeResultadosImagenes].code.coding.code = #007

    /*------------ Informe de resultados procedimientos------------*/
* section[sectionInformeDeResultadosProcedimientos].title = "Resultado de procedimientos"
//* section[sectionInformeDeResultadosProcedimientos].text.status = #generated
//* section[sectionInformeDeResultadosProcedimientos].text.div = <Todo normal>
* section[sectionInformeDeResultadosProcedimientos].code.coding.code = #008

    /*------------ Informe de resultados tratamiento no farmacológico------------*/
* section[sectionInformeDeResultadosTratamientoNoFarmacologico].title = "Tratamiento no farmacológico"
//* section[sectionInformeDeResultadosTratamientoNoFarmacologico].text.status = #generated
//* section[sectionInformeDeResultadosTratamientoNoFarmacologico].text.div = <Debe reposar e hidratarse bien>
* section[sectionInformeDeResultadosTratamientoNoFarmacologico].code.coding.code = #009
