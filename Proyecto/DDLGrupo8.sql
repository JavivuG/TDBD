--------------------------------------------------------------------------|
---------------------------SUSTANCIA_ACTIVA-------------------------------|
--------------------------------------------------------------------------|

-- Crear la tabla SOLICITANTE
--DROP TABLE SOLICITANTE CASCADE CONSTRAINTS;
CREATE TABLE SOLICITANTE (
    nombre_solicitante VARCHAR2(50) PRIMARY KEY,
    direccion VARCHAR2(100)
);

-- Crear la tabla FABRICANTE
--DROP TABLE FABRICANTE CASCADE CONSTRAINTS;
CREATE TABLE FABRICANTE (
    nombre_fabricante VARCHAR2(50) PRIMARY KEY,
    direccion VARCHAR2(100)
);


-- Crear la tabla COMPONENTE
-- DROP TABLE COMPONENTE CASCADE CONSTRAINTS;
CREATE TABLE COMPONENTE (
    nombre_comun VARCHAR2(50) PRIMARY KEY,
    tipo VARCHAR2(50),
    funcion VARCHAR2(100),
    denominacion_quimica VARCHAR2(100),
    numeros VARCHAR2(20),
    formulas VARCHAR2(50),
    peso_molecular NUMBER,
    contenido VARCHAR2(50),
    CONSTRAINT check_peso_positivo CHECK (peso_molecular > 0)
);

-- Crear la tabla CONTACTO
-- DROP TABLE CONTACTO CASCADE CONSTRAINTS;
CREATE TABLE CONTACTO (
    tlf NUMBER PRIMARY KEY,
    cargo VARCHAR2(20),
    tipo VARCHAR2(20),
    nombre_contacto VARCHAR2(50),
    fax NUMBER,
    nombre_fabricante VARCHAR2(50),
    nombre_solicitante VARCHAR2(50),
    FOREIGN KEY (nombre_fabricante) REFERENCES FABRICANTE(nombre_fabricante),
    FOREIGN KEY (nombre_solicitante) REFERENCES SOLICITANTE(nombre_solicitante),
    CONSTRAINT check_digitos_tlf CHECK (tlf > 0 AND LENGTH(TO_CHAR(tlf)) = 9),
    CONSTRAINT check_digitos_fax CHECK (fax > 0 AND LENGTH(TO_CHAR(fax)) = 10)
);

-- Crear la tabla FÁBRICA
-- DROP TABLE FABRICA CASCADE CONSTRAINTS;
CREATE TABLE FABRICA (
    nombre_fabrica VARCHAR(50) PRIMARY KEY,
    direccion VARCHAR2(100),
    metodo_fabricacion VARCHAR2(100),
    nombre_fabricante VARCHAR(50),
    FOREIGN KEY (nombre_fabricante) REFERENCES FABRICANTE(nombre_fabricante)
);

-- Crear la tabla SUSTANCIA_ACTIVA
-- DROP TABLE SUSTANCIA_ACTIVA CASCADE CONSTRAINTS;
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
    informacion_3_4 VARCHAR2(100),
    informacion_3_6 VARCHAR2(100),
    informacion_3_7 VARCHAR2(100),
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
    informacion_2_9 VARCHAR2(100),
    informacion_2_10 VARCHAR2(100),
    CONSTRAINT check_cod_desarrollo CHECK (cod_desarrollo > 0 AND LENGTH(TO_CHAR(cod_desarrollo)) = 7),
    CONSTRAINT check_fecha_registro CHECK (fecha_registro >= TO_DATE('2010-01-01', 'YYYY-MM-DD'))
);


------------------------------------------------------------------------|
---------------------------COMUN----------------------------------------|
------------------------------------------------------------------------|



-- Crear la tabla SOLICITANTE
CREATE TABLE SOLICITANTE (
    nombre_solicitante VARCHAR2(50) PRIMARY KEY,
    direccion VARCHAR2(100)
);

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
    CONSTRAINT numero_entrada CHECK (numero_entrada > 0 AND LENGTH(TO_CHAR(numero_entrada)) = 5),
);

-- Crear la tabla PRODUCTOR
CREATE TABLE PRODUCTOR (
    nombre_productor VARCHAR2(50) PRIMARY KEY,
    direccion VARCHAR2(100)
);


-- Crear la tabla CONTACTO
-- DROP TABLE CONTACTO CASCADE CONSTRAINTS;
CREATE TABLE CONTACTO (
    tlf NUMBER PRIMARY KEY,
    cargo VARCHAR2(20),
    tipo VARCHAR2(20),
    nombre_contacto VARCHAR2(50),
    fax NUMBER,
    nombre_productor VARCHAR2(50),
    nombre_solicitante VARCHAR2(50),
    FOREIGN KEY (nombre_productor) REFERENCES PRODUCTOR(nombre_productor),
    FOREIGN KEY (nombre_solicitante) REFERENCES SOLICITANTE(nombre_solicitante),
    CONSTRAINT check_digitos_tlf CHECK (tlf > 0 AND LENGTH(TO_CHAR(tlf)) = 9),
    CONSTRAINT check_digitos_fax CHECK (fax > 0 AND LENGTH(TO_CHAR(fax)) = 10)
);

