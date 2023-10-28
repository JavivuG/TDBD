### Sustancias Activas (Falta poner propiedades y su relacion)

SUSTANCIA_ACTIVA(nombre_comun, fecha_regisro, nombre_quimico, 
cod_desarrollo, numeros, formulas,pureza, perfil_analitico, funcion, efectos_org_nocivos, ambito_utilizacion, modo_accion, , metodos_precauciones, procedimientos_destruccion, medidas_emergencia, informacion_3.4, informacion_3.6, informacion_3.7, evaluacion_ambiental, estudios_ecotoxicologicos)

SOLICITANTE(id_solicitante, nombre, direccion)

CONTACTO(nombre_contacto, tlf, fax)

INDICA(nombre_contacto, id_solicitante)

SOLICITA(id_solicitante, nombre_comun, fecha)

COMPONENTE(nombre_comun, tipo,funcion, denominacion_quimica, numeros, formulas, peso_molecular, contenido)

FORMADO(nombre_comun_sust_activa, nombre_comun_componente)

FABRICANTE(id_fabricante, nombre, direccion)

FABRICA(nombre_comun, id_fabricante)

FÁBRICA(id_fabrica, nombre, direccion, metodo_fabricacion, id_fabricante)

PUNTO_CONTACTO(nombre, tipo, tlf, fax, id_fabricante)

PROPIEDADES(punto_fusion, punto_ebullicion, densidad_relativa, volatilidad, presion_vapor, aspecto, espectros, extincion_molecular, solubilidad_agua, solubilidad_organicos, coeficiente_particion, inflamabilidad, punto_inflamacion, propiedades_explosivas, tension_superficial, propiedades_comburentes, informacion_2.9,  informacion_2.10)

POSEE(...)


### Microorganismos

MICROORGANISMO(numero_entrada, nombre_cientifico, descripcion_especie, taxonomia, especificaciones, metodos_criterios, nombres, codigos, relaciones_patogenos)

SOLICITANTE(id_solicitante, nombre, direccion)

SOLICITA(id_solicitante, nro_entrada, fecha)

CONTACTO(nombre, cargo, tlf, fax, id_solicitante)

PRODUCTOR(id_productor, nombre, direccion)

PRODUCE(numero_entrada, id_productor)

PUNTO_CONTACTO(nombre, tipo, tlf, fax, id_productor)

INSTALACION(id_instalacion, nombre, direccion, id_productor)
