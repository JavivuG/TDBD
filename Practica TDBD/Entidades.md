### Sustancias Activas

- SUSTANCIA_ACTIVA(nombre_comun, fecha_regisro, nombre_quimico, cod_desarrollo, **numeros**, **formulas**,pureza, perfil_analitico, funcion, **efectos_org_nocivos**, ambito_utilizacion, modo_accion, , **metodos_precauciones**, procedimientos_destruccion, **medidas_emergencia**, **informacion_3.4**, **informacion_3.6**, **informacion_3.7**, evaluacion_ambiental, estudios_ecotoxicologicos) --Se relaciona--
	- SOLICITANTE(id_solicitante, nombre, direccion) --Se relaciona--
		- CONTACTO(nombre, cargo, tlf, fax) 
		
	- FABRICANTE(id_fabricante,nombre,direccion) --Se relaciona--
		- FABRICA(id_fabrica, direccion, **metodo_fabricacion**)
		- PUNTO_CONTACTO(tipo,nombre,tlf,fax)
		
	- COMPONENTE(tipo,funcion, denom_quimica, nombre_comun, **numeros**,formulas, peso_molecular, contenido)
	
	- PROPIEDADES(punto_fusion, punto_ebullicion, densidad_relativa, volatilidad, presion_vapor, **aspecto**, espectros, extincion_molecular, solubilidad_agua, solubilidad_organicos, coeficiente_particion, inflamabilidad, punto_inflamacion, propiedades_explosivas, tension_superficial, propiedades_comburentes, **informacion_2.9**,  i**nformacion_2.10**)

### Microorganismos

- MICROORGANISMO(nro_entrada, nombre_cientifico, descripcion_especie, **taxonomia**, **especificaciones**, **metodos_criterios**, **nombres**, codigos, **relaciones_patogenos**) --Se relaciona--
	- SOLICITANTE(id_solicitante, nombre, direccion) --Se relaciona--
		- CONTACTO(nombre, cargo, tlf, fax)
		
	- PRODUCTOR(id_productor, nombre, direccion)
		- INSTALACION(id_instalacion, nombre, direccion)
		- PUNTO_CONTACTO(tipo,nombre,tlf,fax)