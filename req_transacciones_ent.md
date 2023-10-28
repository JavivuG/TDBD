## Requisitos
### Sustancias Activas
#### Item 1
#### 1.1 
Sobre el Solicitante de la sustancia activa se almacenara su nombre, dirección, y los datos de la persona de contacto.

#### 1.2 
Sobre el fabricante de la sustancia activa se almacenara su nombre, dirección al igual que el nombre y la dirección de todas las fabricas en las que se fabrica la sustancia activa y, además, se almacenara el tipo, nombre, teléfono y fax del punto de contacto del fabricante.

#### 1.3 
El nombre común deberá ser aceptado por la ISO

#### 1.4 
El nombre químico deberá estar conforme a lo especificado en el anexo VI del Reglamento (CE) no 1272/2008 del Consejo, si no esta incluido en el reglamento debe estar en conformidad con la nomenclatura de la IUPAC y CA

#### 1.5 
Los códigos de desarrollo se utilizaran para identificar la sustancia activa. Por cada código comunicado, se declarará el material al que se refiera, el período durante el que se haya empleado y los Estados miembros u otros países en los que se haya empleado y se emplee actualmente.

#### 1.6


#### 1.7 
Se deberá almacenar la formula molecular, masa molecular y la formula estructural de la sustancia activa y, en si estuvieran presentes en la sustancia activa, la formula estructural de cada isómero óptico y estereoisómero presentes.

#### 1.8
Se debe almacenar el método de fabricación de las fabricas, especificando la identidad de los materiales de base, procedimientos químicos utilizados y la identidad de los subproductos e impurezas presentes en el producto final. Si se refiere a un sistema de producción en planta piloto, se volverá a facilitar la información necesaria una vez que se hayan estabilizado los métodos y procedimientos de producción a escala industrial.

#### 1.9
Se almacenara el contenido en gramos/kilogramo de sustancia activa pura en el material fabricado empleado para la producción de productos formulados.

#### 1.10


#### 1.11
Se debe almacenar datos cuantitativos de todos los componentes presentes en cantidades superiores a 1 g/kg en la sustancia activa. Además, se indicara el contenido real de los componentes que sean especialmente peligrosos por sus propiedades toxicológicas, ecotoxicológicas o medioambientales. Se incluirá los resultados de los análisis de muestras individuales y un resumen de dichos datos 



#### Item 2

#### 2.1

#### 2.2

#### 2.3

#### 2.4

#### 2.5

#### 2.6

#### 2.7

#### 2.8

#### 2.9

#### 2.10

#### 2.11

#### 2.12

#### 2.13

#### 2.14

#### 2.15

### Microorganismos

#### Item 1
#### 1.1
Sobre el solicitante del microorganismo almacenamos su nombre, dirección y el nombre, cargo y números de teléfono y fax de la persona de contacto. Además, si el solicitante cuenta con una oficina, agente o representante en el Estado miembro en el que se presente la solicitud de aprobación y, si es diferente, en el Estado miembro ponente nombrado por la Comisión, se debe almacenar el nombre y la dirección de la oficina, agente o representante local, así como el nombre, cargo y los números de teléfono y telefax de la persona de contacto.

#### 1.2
Sobre el productor se almacena su nombre, dirección.

Por cada instalación del productor se almacena su nombre y direccion

#### 1.3


## Transacciones

Añadir el identificador de una sustancia activa. 
Añadir el identificador de un microorganismo. 
Añadir la ubicación de la fábrica de un fabricante. 
Añadir el código de desarrollo del fabricante. 
Añadir el método de fabricación de una sustancia activa. 
Añadir el punto de fusión de una sustancia activa. 
Añadir el punto de inflamaciónd de una sustancia activa. 
Añadir el nombre del productor del microorganismo. 
Añadir el nombre del solicitante del microorganismo. 
Añadir el número de teléfono del punto central del productor del microorganismo. 
Añadir el tipo de microorganismo.

Modificar los datos de una sustancia activa. 
Modificar los datos de un fabricante de una sustancia activa. 
Modificar la dirección de un fabricante de una sustancia activa. Modificar el número de teléfono del fabricante de una sustancia activa. Modificar los datos de un solicitante de una sustancia activa. Modificar la dirección de un solicitante de una sustancia activa. Modificar el número de teléono del solicitante de una sustancia activa. Modificar los datos de un microorganismo. 
Eliminar los datos de una sustancia activa. 
Eliminar los datos de un fabricante. 
Eliminar los datos de un solicitante. 
Eliminar los datos de un microorganismo. 
Eliminar los datos de un productor.

Consultar el nombre de un determinado solicitante. 
Consultar la dirección de un determinado fabricante. 
Consultar el tipo de componente de una determinada sustancia activa. Consultar el nombre común de una determinada sustancia activa. Consultar el punto de fusión de una determinada sustancia activa. Consultar el peso molecular de una sustancia activa. 
Consultar todas las propiedades de una determinada sustancia activa. Consultar cuantas sustancias activas pertenecen a un determinado fabricante. 
Consultar cuantas sustancias activas pertenecen a un determinado fabricante. 
Consultar el número de sustancias activas con un punto de fusión determinado. Consultar el nombre de un determinado productor.


## Entidades

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




**En negrita las que son cadenas de texto por ser resumen de analítico**

Preguntar sobre 1.10, 2.9 y 2.10, 3.4

PARTE A: Item 1, 2
PARTE B: 1.1, 1.2


