-- DDL Grupo 8

-----------------
-- SOLICITANTE --
-----------------
DROP TABLE SOLICITANTE CASCADE CONSTRAINTS;
CREATE TABLE SOLICITANTE (
    nombre_solicitante VARCHAR2(50) PRIMARY KEY,
    direccion VARCHAR2(100)
);

--------------
-- CONTACTO --
--------------
DROP TABLE CONTACTO CASCADE CONSTRAINTS;
CREATE TABLE CONTACTO (
    tlf NUMBER PRIMARY KEY,
    cargo VARCHAR2(20),
    nombre_contacto VARCHAR2(50),
    fax NUMBER,
    nombre_solicitante VARCHAR2(50),
    FOREIGN KEY (nombre_solicitante) REFERENCES SOLICITANTE(nombre_solicitante),
    CONSTRAINT check_digitos_tlf0 CHECK (tlf > 0 AND LENGTH(TO_CHAR(tlf)) = 9),
    CONSTRAINT check_digitos_fax0 CHECK (fax > 0 AND LENGTH(TO_CHAR(fax)) = 10)
);


-------------------------------------------------------------------------------|
---------------------------PARTE DE SUSTANCIAS ACTIVAS-------------------------|
-------------------------------------------------------------------------------|

----------------
-- FABRICANTE --
----------------
DROP TABLE FABRICANTE CASCADE CONSTRAINTS;
CREATE TABLE FABRICANTE (
    nombre_fabricante VARCHAR2(50) PRIMARY KEY,
    direccion VARCHAR2(100)
);

-------------------------
-- CONTACTO_FABRICANTE --
-------------------------
DROP TABLE CONTACTO_FABRICANTE CASCADE CONSTRAINTS;
CREATE TABLE CONTACTO_FABRICANTE (
    tlf NUMBER PRIMARY KEY,
    tipo VARCHAR2(20),
    nombre_contacto VARCHAR2(50),
    fax NUMBER,
    nombre_fabricante VARCHAR2(50),
    FOREIGN KEY (nombre_fabricante) REFERENCES FABRICANTE(nombre_fabricante),
    CONSTRAINT check_digitos_tlf1 CHECK (tlf > 0 AND LENGTH(TO_CHAR(tlf)) = 9),
    CONSTRAINT check_digitos_fax1 CHECK (fax > 0 AND LENGTH(TO_CHAR(fax)) = 10)
);

----------------
-- COMPONENTE --
----------------
DROP TABLE COMPONENTE CASCADE CONSTRAINTS;
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

-------------
-- FABRICA --
-------------
DROP TABLE FABRICA CASCADE CONSTRAINTS;
CREATE TABLE FABRICA (
    nombre_fabrica VARCHAR(50) PRIMARY KEY,
    direccion VARCHAR2(100),
    metodo_fabricacion VARCHAR2(100),
    nombre_fabricante VARCHAR(50),
    FOREIGN KEY (nombre_fabricante) REFERENCES FABRICANTE(nombre_fabricante)
);

----------------------
-- SUSTANCIA_ACTIVA --
----------------------
DROP TABLE SUSTANCIA_ACTIVA CASCADE CONSTRAINTS;
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
    informacion_3_6 VARCHAR2(2500),
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
    inflamabilidad VARCHAR2(50),
    punto_inflamacion NUMBER,
    propiedades_explosivas VARCHAR2(100),
    tension_superficial VARCHAR2(20),
    propiedades_comburentes VARCHAR2(100),
    informacion_2_9 VARCHAR2(100),
    informacion_2_10 VARCHAR2(100),
    CONSTRAINT check_cod_desarrollo CHECK (cod_desarrollo > 0 AND LENGTH(TO_CHAR(cod_desarrollo)) = 7),
    CONSTRAINT check_fecha_registro0 CHECK (fecha_registro >= TO_DATE('2010-01-01', 'YYYY-MM-DD'))
);

--------------------------
-- SOLICITA_SUST_ACTIVA --
--------------------------
DROP TABLE SOLICITA_SUST_ACTIVA CASCADE CONSTRAINTS;
CREATE TABLE SOLICITA_SUST_ACTIVA (
    nombre_solicitante VARCHAR2(50),
    cod_desarrollo NUMBER,
    fecha DATE,
    PRIMARY KEY (nombre_solicitante, cod_desarrollo),
    FOREIGN KEY (nombre_solicitante) REFERENCES SOLICITANTE(nombre_solicitante),
    FOREIGN KEY (cod_desarrollo) REFERENCES SUSTANCIA_ACTIVA(cod_desarrollo),
    CONSTRAINT check_fecha_registro1 CHECK (fecha >= TO_DATE('2010-01-01', 'YYYY-MM-DD')),
    CONSTRAINT check_cod_desarrollo1 CHECK (cod_desarrollo > 0 AND LENGTH(TO_CHAR(cod_desarrollo)) = 7)
);

-------------
-- FORMADO --
-------------
DROP TABLE FORMADO CASCADE CONSTRAINTS;
CREATE TABLE FORMADO (
    cod_desarrollo NUMBER,
    nombre_comun_componente VARCHAR2(50),
    PRIMARY KEY (cod_desarrollo, nombre_comun_componente),
    FOREIGN KEY (cod_desarrollo) REFERENCES SUSTANCIA_ACTIVA(cod_desarrollo),
    FOREIGN KEY (nombre_comun_componente) REFERENCES COMPONENTE(nombre_comun),
    CONSTRAINT check_cod_desarrollo2 CHECK (cod_desarrollo > 0 AND LENGTH(TO_CHAR(cod_desarrollo)) = 7)
);

----------------
-- FABRICARSE --
----------------
DROP TABLE FABRICARSE CASCADE CONSTRAINTS;
CREATE TABLE FABRICARSE (
    cod_desarrollo NUMBER,
    nombre_fabricante VARCHAR2(50),
    PRIMARY KEY (cod_desarrollo, nombre_fabricante),
    FOREIGN KEY (cod_desarrollo) REFERENCES SUSTANCIA_ACTIVA(cod_desarrollo),
    FOREIGN KEY (nombre_fabricante) REFERENCES FABRICANTE(nombre_fabricante),
    CONSTRAINT check_cod_desarrollo3 CHECK (cod_desarrollo > 0 AND LENGTH(TO_CHAR(cod_desarrollo)) = 7)
);




---------------------------------------------------------------------------|
---------------------------PARTE DE MICROOGANISMOS-------------------------|
---------------------------------------------------------------------------|


---------------
-- PRODUCTOR --
---------------
DROP TABLE PRODUCTOR CASCADE CONSTRAINTS;
CREATE TABLE PRODUCTOR (
    nombre_productor VARCHAR2(50) PRIMARY KEY,
    direccion VARCHAR2(100)
);

------------------------
-- CONTACTO_PRODUCTOR --
------------------------
DROP TABLE CONTACTO_PRODUCTOR CASCADE CONSTRAINTS;
CREATE TABLE CONTACTO_PRODUCTOR(
    tlf NUMBER PRIMARY KEY,
    tipo VARCHAR2(20),
    nombre_contacto VARCHAR2(50),
    fax NUMBER,
    nombre_productor VARCHAR2(50),
    FOREIGN KEY (nombre_productor) REFERENCES PRODUCTOR(nombre_productor),
    CONSTRAINT check_digitos_tlf2 CHECK (tlf > 0 AND LENGTH(TO_CHAR(tlf)) = 9),
    CONSTRAINT check_digitos_fax2 CHECK (fax > 0 AND LENGTH(TO_CHAR(fax)) = 10)
);

--------------------
-- MICROORGANISMO --
--------------------
DROP TABLE MICROORGANISMO CASCADE CONSTRAINTS;
CREATE TABLE MICROORGANISMO (
    numero_entrada VARCHAR2(8) PRIMARY KEY,
    nombre_cientifico VARCHAR2(100),
    nombres VARCHAR2(100),
    descripcion_especie VARCHAR2(200),
    taxonomia VARCHAR2(100),
    especificaciones VARCHAR2(200),
    metodos_criterios VARCHAR2(200),
    nombre VARCHAR2(50),
    codigos VARCHAR2(50),
    relaciones_patogenos VARCHAR2(200),
    CONSTRAINT numero_entrada0 CHECK (numero_entrada > 0 AND LENGTH(TO_CHAR(numero_entrada)) <= 5)
);

-----------------
-- INSTALACION --
-----------------
DROP TABLE INSTALACION CASCADE CONSTRAINTS;
CREATE TABLE INSTALACION (
    nombre_instalacion VARCHAR2(50) PRIMARY KEY,
    direccion VARCHAR2(100),
    nombre_productor VARCHAR2(50),
    FOREIGN KEY (nombre_productor) REFERENCES PRODUCTOR(nombre_productor)
);

-----------------------------
-- SOLICITA_MICROORGANISMO --
-----------------------------
DROP TABLE SOLICITA_MICROORGANISMO CASCADE CONSTRAINTS;
CREATE TABLE SOLICITA_MICROORGANISMO (
    nombre_solicitante VARCHAR2(50),
    numero_entrada VARCHAR2(8),
    fecha DATE,
    PRIMARY KEY (nombre_solicitante, numero_entrada),
    FOREIGN KEY (nombre_solicitante) REFERENCES SOLICITANTE(nombre_solicitante),
    FOREIGN KEY (numero_entrada) REFERENCES MICROORGANISMO(numero_entrada),
    CONSTRAINT numero_entrada1 CHECK (numero_entrada > 0 AND LENGTH(TO_CHAR(numero_entrada)) <= 5),
    CONSTRAINT check_fecha_registro2 CHECK (fecha >= TO_DATE('2010-01-01', 'YYYY-MM-DD'))
);

-------------
-- PRODUCE --
-------------
DROP TABLE PRODUCE CASCADE CONSTRAINTS;
CREATE TABLE PRODUCE (
    numero_entrada VARCHAR2(8),
    nombre_productor VARCHAR2(50),
    PRIMARY KEY (numero_entrada, nombre_productor),
    FOREIGN KEY (numero_entrada) REFERENCES MICROORGANISMO(numero_entrada),
    FOREIGN KEY (nombre_productor) REFERENCES PRODUCTOR(nombre_productor),
    CONSTRAINT numero_entrada2 CHECK (numero_entrada > 0 AND LENGTH(TO_CHAR(numero_entrada)) <= 5)
);


-- Restricciones del enunciado del hito 2
-- 6. Implementar la restricción que garantiza que si una sustancia tiene alguno de los efectos nocivos indicados en el ítem 3.2, también estará en la base de datos la información relativa a los métodos y protecciones recomendadas que requiere el ítem 3.6

CREATE OR REPLACE TRIGGER sustancia_activa_trigger
BEFORE INSERT ON SUSTANCIA_ACTIVA
FOR EACH ROW
BEGIN
    IF :NEW.efectos_org_nocivos IN (
        'Accion por contacto',
        'Accion por ingestion',
        'Accion por inhalacion',
        'Accion fungitoxica',
        'Accion fungistatica',
        'Desecante',
        'Inhibidor de la reproduccion'
    ) THEN
    -- Si hay un efecto nocivo de los anteriores, se anade la informacion del articulo 31 correspondiente
    :NEW.informacion_3_6 := '1.El proveedor proporcionara una ficha de datos de seguridad para sustancias o preparados peligrosos o incluidos en una lista específica. 2.Los agentes de la cadena de suministro deben garantizar coherencia entre la ficha de datos y la valoración de seguridad química. 3.Se proporcionará la ficha para preparados no peligrosos, pero con sustancias peligrosas en concentraciones específicas. 4.No es obligatorio proporcionar la ficha para preparados peligrosos ofrecidos al publico, salvo solicitud de un usuario intermedio o distribuidor. 5.La ficha, en un idioma oficial, incluira informacion sobre identificación, peligros, composición, primeros auxilios, medidas contra incendios, almacenamiento, etc. 6.Incluira informacion sobre exposicion, propiedades fisicas y quimicas, estabilidad, reactividad, toxicologia, ecologia, eliminacion, transporte, regulacion y otra informacion. 7.Los agentes de la cadena de suministro adjuntaran escenarios de exposicion relevantes al elaborar informes sobre seguridad química. 8.La ficha se facilitara gratuitamente y debera actualizarse ante nueva informacion relevante para la gestion de riesgos o peligros, autorización o restriccion. 9.Los proveedores deberan actualizarla ante nueva informacion relevante para la gestion de riesgos, o de nueva informacion sobre peligros; cuando se haya concedido o denegado una autorizacion; cuando se imponga una restriccion.';
    END IF;
END;
/

-- 7. Implementar la restricción que garantiza que todos los efectos nocivos que se asocian a una sustancia activa se corresponden con alguno de los recogidos en el catálogo del ítem 3.2.1.
CREATE OR REPLACE TRIGGER check_efectos_nocivos
BEFORE INSERT OR UPDATE OF efectos_org_nocivos ON SUSTANCIA_ACTIVA
FOR EACH ROW
DECLARE
BEGIN
    -- Verificar si el nuevo efecto nocivo está permitido
    IF :NEW.efectos_org_nocivos
    NOT IN ('Accion por contacto', 'Accion por ingestion', 'Accion por inhalacion','Accion fungitoxica','Accion fungistatica','Desecante','Inhibidor de la reproduccion') THEN
        RAISE_APPLICATION_ERROR(-20001, 'Efecto nocivo no permitido.');
    END IF;
END;
/