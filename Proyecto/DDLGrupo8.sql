--------------------------------------------------------------------------|
---------------------------SUSTANCIA_ACTIVA-------------------------------|
--------------------------------------------------------------------------|

-- Crear la tabla SOLICITANTE
CREATE TABLE SOLICITANTE (
    nombre_solicitante NUMBER PRIMARY KEY,
    nombre VARCHAR2(50),
    direccion VARCHAR2(100)
);

-- Crear la tabla CONTACTO
CREATE TABLE CONTACTO (
    tlf VARCHAR2(15) PRIMARY KEY,
    cargo VARCHAR2(20),
    cargo VARCHAR2(20)
    nombre_contacto VARCHAR2(50),
    fax VARCHAR2(15)
    FOREIGN KEY (nombre_fabricante) REFERENCES FABRICANTE(nombre_fabricante)
    FOREIGN KEY (nombre_solicitante) REFERENCES SOLICITANTE(nombre_solicitante)
);

-- Crear la tabla COMPONENTE
CREATE TABLE COMPONENTE (
    nombre_comun VARCHAR2(50) PRIMARY KEY,
    tipo VARCHAR2(50),
    funcion VARCHAR2(100),
    denominacion_quimica VARCHAR2(100),
    numeros VARCHAR2(20),
    formulas VARCHAR2(50),
    peso_molecular NUMBER,
    contenido VARCHAR2(50)
);

-- Crear la tabla FABRICANTE
CREATE TABLE FABRICANTE (
    nombre_fabricante NUMBER PRIMARY KEY,
    nombre VARCHAR2(50),
    direccion VARCHAR2(100)
);

-- Crear la tabla FÁBRICA
CREATE TABLE FABRICA (
    nombre_fabrica NUMBER PRIMARY KEY,
    nombre VARCHAR2(50),
    direccion VARCHAR2(100),
    metodo_fabricacion VARCHAR2(100),
    nombre_fabricante NUMBER,
    FOREIGN KEY (nombre_fabricante) REFERENCES FABRICANTE(nombre_fabricante)
);

-- Crear la tabla SUSTANCIA_ACTIVA
CREATE TABLE SUSTANCIA_ACTIVA (
    cod_desarrollo NUMBER PRIMARY KEY,
    nombre_comun VARCHAR2(50),
    fecha_registro DATE,
    nombre_quimico VARCHAR2(100),
    numeros VARCHAR2(20),
    formulas VARCHAR2(50),
    pureza VARCHAR2(20),
    perfil_analitico VARCHAR2(100),
    funcion VARCHAR2(100),
    efectos_org_nocivos VARCHAR2(100),
    ambito_utilizacion VARCHAR2(100),
    modo_accion VARCHAR2(100),
    metodos_precauciones VARCHAR2(100),
    procedimientos_destruccion VARCHAR2(100),
    medidas_emergencia VARCHAR2(100),
    informacion_3.4 VARCHAR2(100),
    informacion_3.6 VARCHAR2(100),
    informacion_3.7 VARCHAR2(100),
    evaluacion_ambiental VARCHAR2(100),
    estudios_ecotoxicologicos VARCHAR2(100),
    punto_fusion NUMBER,
    punto_ebullicion NUMBER,
    densidad_relativa NUMBER,
    volatilidad VARCHAR2(20),
    presion_vapor VARCHAR2(20),
    aspecto VARCHAR2(50),
    espectros VARCHAR2(100),
    extincion_molecular VARCHAR2(100),
    solubilidad_agua VARCHAR2(50),
    solubilidad_organicos VARCHAR2(50),
    coeficiente_particion VARCHAR2(50),
    inflamabilidad VARCHAR2(20),
    punto_inflamacion NUMBER,
    propiedades_explosivas VARCHAR2(100),
    tension_superficial VARCHAR2(20),
    propiedades_comburentes VARCHAR2(100),
    informacion_2.9 VARCHAR2(100),
    informacion_2.10 VARCHAR2(100)
);





------------------------------------------------------------------------|
---------------------------MICROOGANISMOS-------------------------------|
------------------------------------------------------------------------|

-- Crear la tabla MICROORGANISMO
CREATE TABLE MICROORGANISMO (
    numero_entrada NUMBER PRIMARY KEY,
    nombre_cientifico VARCHAR2(100),
    nombres VARCHAR2(100),
    descripcion VARCHAR2(200),
    especie VARCHAR2(50),
    taxonomia VARCHAR2(100),
    especificaciones VARCHAR2(200),
    metodos_criterios VARCHAR2(200),
    codigos VARCHAR2(50),
    relaciones_patogenos VARCHAR2(200)
);

-- Crear la tabla SOLICITANTE
CREATE TABLE SOLICITANTE (
    id_solicitante NUMBER PRIMARY KEY,
    nombre VARCHAR2(50),
    direccion VARCHAR2(100)
);

-- Crear la tabla CONTACTO
CREATE TABLE CONTACTO (
    nombre VARCHAR2(50),
    cargo VARCHAR2(50),
    tlf VARCHAR2(15),
    fax VARCHAR2(15),
    id_solicitante NUMBER,
    PRIMARY KEY (nombre, id_solicitante),
    FOREIGN KEY (id_solicitante) REFERENCES SOLICITANTE(id_solicitante)
);

-- Crear la tabla PRODUCTOR
CREATE TABLE PRODUCTOR (
    id_productor NUMBER PRIMARY KEY,
    nombre VARCHAR2(50),
    direccion VARCHAR2(100)
);

-- Crear la tabla PUNTO_CONTACTO
CREATE TABLE PUNTO_CONTACTO (
    nombre VARCHAR2(50),
    tipo VARCHAR2(50),
    tlf VARCHAR2(15),
    fax VARCHAR2(15),
    id_productor NUMBER,
    PRIMARY KEY (nombre, id_productor),
    FOREIGN KEY (id_productor) REFERENCES PRODUCTOR(id_productor)
);

-- Crear la tabla INSTALACION
CREATE TABLE INSTALACION (
    id_instalacion NUMBER PRIMARY KEY,
    nombre VARCHAR2(50),
    direccion VARCHAR2(100),
    id_productor NUMBER,
    FOREIGN KEY (id_productor) REFERENCES PRODUCTOR(id_productor)
);

