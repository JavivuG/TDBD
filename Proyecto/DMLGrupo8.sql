-- SOLICITANTE 
INSERT INTO SOLICITANTE (nombre_solicitante, direccion) 
VALUES ('Maria Lopez', 'Calle Gran Via, 123, Madrid');
INSERT INTO SOLICITANTE (nombre_solicitante, direccion) 
VALUES ('Antonio Garcia', 'Avenida Diagonal, 45, Barcelona');
INSERT INTO SOLICITANTE (nombre_solicitante, direccion) 
VALUES ('Isabel Martinez', 'Calle Alcala, 67, Sevilla');
INSERT INTO SOLICITANTE (nombre_solicitante, direccion) 
VALUES ('Francisco Rodriguez', 'Paseo de la Castellana, 89, Madrid');
INSERT INTO SOLICITANTE (nombre_solicitante, direccion) 
VALUES ('Ana Garcia', 'Plaza Mayor, 12, Salamanca');
INSERT INTO SOLICITANTE (nombre_solicitante, direccion) 
VALUES ('Manuel Sanchez', 'Calle Serrano, 34, Madrid');
INSERT INTO SOLICITANTE (nombre_solicitante, direccion) 
VALUES ('Carmen Ruiz', 'Calle Goya, 56, Valencia');
INSERT INTO SOLICITANTE (nombre_solicitante, direccion) 
VALUES ('Javier Fernandez', 'Avenida de la Constitucion, 78, Sevilla');
INSERT INTO SOLICITANTE (nombre_solicitante, direccion) 
VALUES ('Raquel Lopez', 'Calle Pelayo, 23, Barcelona');
INSERT INTO SOLICITANTE (nombre_solicitante, direccion) 
VALUES ('Pedro Garcia', 'Calle Cervantes, 45, Valencia');
INSERT INTO SOLICITANTE (nombre_solicitante, direccion) 
VALUES ('Marta Perez', 'Paseo del Prado, 67, Madrid');
INSERT INTO SOLICITANTE (nombre_solicitante, direccion) 
VALUES ('Jose Martinez', 'Calle Rambla, 34, Barcelona');
INSERT INTO SOLICITANTE (nombre_solicitante, direccion) 
VALUES ('Elena Garcia', 'Avenida Blasco Ibanez, 56, Valencia');
INSERT INTO SOLICITANTE (nombre_solicitante, direccion) 
VALUES ('David Sanchez', 'Plaza de Espana, 12, Sevilla');
INSERT INTO SOLICITANTE (nombre_solicitante, direccion) 
VALUES ('Laura Martin', 'Calle Almirante, 45, Madrid');

-- FABRICANTE 
INSERT INTO FABRICANTE (nombre_fabricante, direccion) 
VALUES ('Empresa A', 'Calle Industria, 123, Barcelona');
INSERT INTO FABRICANTE (nombre_fabricante, direccion) 
VALUES ('Empresa B', 'Avenida Tecnologia, 45, Madrid');
INSERT INTO FABRICANTE (nombre_fabricante, direccion) 
VALUES ('Empresa C', 'Plaza Innovacion, 67, Valencia');
INSERT INTO FABRICANTE (nombre_fabricante, direccion) 
VALUES ('Empresa D', 'Calle Progreso, 89, Sevilla');
INSERT INTO FABRICANTE (nombre_fabricante, direccion) 
VALUES ('Empresa E', 'Paseo del Desarrollo, 12, Zaragoza');
INSERT INTO FABRICANTE (nombre_fabricante, direccion) 
VALUES ('Empresa F', 'Avenida del Avance, 34, Bilbao');
INSERT INTO FABRICANTE (nombre_fabricante, direccion) 
VALUES ('Empresa G', 'Calle Futuro, 56, Malaga');
INSERT INTO FABRICANTE (nombre_fabricante, direccion) 
VALUES ('Empresa H', 'Avenida de la Ciencia, 78, Barcelona');
INSERT INTO FABRICANTE (nombre_fabricante, direccion) 
VALUES ('Empresa I', 'Calle Creatividad, 23, Madrid');
INSERT INTO FABRICANTE (nombre_fabricante, direccion) 
VALUES ('Empresa J', 'Avenida Industrial, 45, Valencia');

-- FABRICA 
INSERT INTO FABRICA (nombre_fabrica, direccion, metodo_fabricacion, nombre_fabricante) 
VALUES ('Fabrica A', 'Calle Industria, 123, Barcelona', 'Produccion en masa', 'Empresa A');
INSERT INTO FABRICA (nombre_fabrica, direccion, metodo_fabricacion, nombre_fabricante) 
VALUES ('Fabrica B', 'Avenida Tecnologia, 45, Madrid', 'Fabricacion a medida', 'Empresa B');
INSERT INTO FABRICA (nombre_fabrica, direccion, metodo_fabricacion, nombre_fabricante) 
VALUES ('Fabrica C', 'Plaza Innovacion, 67, Valencia', 'Produccion automatizada', 'Empresa C');
INSERT INTO FABRICA (nombre_fabrica, direccion, metodo_fabricacion, nombre_fabricante) 
VALUES ('Fabrica D', 'Calle Progreso, 89, Sevilla', 'Fabricacion artesanal', 'Empresa D');
INSERT INTO FABRICA (nombre_fabrica, direccion, metodo_fabricacion, nombre_fabricante) 
VALUES ('Fabrica E', 'Paseo del Desarrollo, 12, Zaragoza', 'Produccion en serie', 'Empresa E');
INSERT INTO FABRICA (nombre_fabrica, direccion, metodo_fabricacion, nombre_fabricante) 
VALUES ('Fabrica F', 'Avenida del Avance, 34, Bilbao', 'Produccion personalizada', 'Empresa F');
INSERT INTO FABRICA (nombre_fabrica, direccion, metodo_fabricacion, nombre_fabricante) 
VALUES ('Fabrica G', 'Calle Futuro, 56, Malaga', 'Produccion en cadena', 'Empresa G');
INSERT INTO FABRICA (nombre_fabrica, direccion, metodo_fabricacion, nombre_fabricante) 
VALUES ('Fabrica H', 'Avenida de la Ciencia, 78, Barcelona', 'Fabricacion a medida', 'Empresa H');
INSERT INTO FABRICA (nombre_fabrica, direccion, metodo_fabricacion, nombre_fabricante) 
VALUES ('Fabrica I', 'Calle Creatividad, 23, Madrid', 'Produccion automatizada', 'Empresa I');
INSERT INTO FABRICA (nombre_fabrica, direccion, metodo_fabricacion, nombre_fabricante) 
VALUES ('Fabrica J', 'Avenida Industrial, 45, Valencia', 'Produccion en serie', 'Empresa J');

-- Contacto de fabricante
INSERT INTO CONTACTO_FABRICANTE(tlf,tipo,nombre_contacto,fax,nombre_fabricante)
VALUES (874209356, 'Central', 'Alejandro García', 7951086322, 'Empresa A');
INSERT INTO CONTACTO_FABRICANTE(tlf,tipo,nombre_contacto,fax,nombre_fabricante)
VALUES (562198743, 'Oficina', 'Marta Rodríguez', 2567431894, 'Empresa B');
INSERT INTO CONTACTO_FABRICANTE(tlf,tipo,nombre_contacto,fax,nombre_fabricante)
VALUES (309857614, 'Central', 'Marta Perez', 2567431895, 'Empresa C');
INSERT INTO CONTACTO_FABRICANTE(tlf,tipo,nombre_contacto,fax,nombre_fabricante)
VALUES (721684935, 'Departamento', 'Ana González', 6835149276, 'Empresa D');
INSERT INTO CONTACTO_FABRICANTE(tlf,tipo,nombre_contacto,fax,nombre_fabricante)
VALUES (435976128, 'Central', 'Daniel Martínez', 9203758641, 'Empresa E');
INSERT INTO CONTACTO_FABRICANTE(tlf,tipo,nombre_contacto,fax,nombre_fabricante)
VALUES (189437520, 'Central', 'María Fernández', 5748293611, 'Empresa F');
INSERT INTO CONTACTO_FABRICANTE(tlf,tipo,nombre_contacto,fax,nombre_fabricante)
VALUES (503216987, 'Oficina', 'Laura Jiménez', 5748293618, 'Empresa G');
INSERT INTO CONTACTO_FABRICANTE(tlf,tipo,nombre_contacto,fax,nombre_fabricante)
VALUES (648702513, 'Central', 'Guillermo Torres', 8072361549, 'Empresa H');
INSERT INTO CONTACTO_FABRICANTE(tlf,tipo,nombre_contacto,fax,nombre_fabricante)
VALUES (927315468, 'Oficina', 'Raúl Morales', 1496857301, 'Empresa I');
INSERT INTO CONTACTO_FABRICANTE(tlf,tipo,nombre_contacto,fax,nombre_fabricante)
VALUES (364890172, 'Central', 'Sergio Díaz', 5321974682, 'Empresa J');

-- Contacto de solicitantes 
INSERT INTO CONTACTO (tlf, cargo, nombre_contacto, fax, nombre_solicitante) 
VALUES (123456789, 'Gerente', 'Juan Perez', 9876543210, 'Maria Lopez');
INSERT INTO CONTACTO (tlf, cargo, nombre_contacto, fax, nombre_solicitante) 
VALUES (726491538, 'Director', 'Ana Garcia', 8765432109, 'Antonio Garcia');
INSERT INTO CONTACTO (tlf, cargo, nombre_contacto, fax, nombre_solicitante) 
VALUES (583207419, 'Jefe de Ventas', 'Marta Perez', 7654321098, 'Isabel Martinez');
INSERT INTO CONTACTO (tlf, cargo, nombre_contacto, fax, nombre_solicitante) 
VALUES (904815632, 'Coordinador', 'David Sanchez', 6543210987, 'Francisco Rodriguez');
INSERT INTO CONTACTO (tlf, cargo, nombre_contacto, fax, nombre_solicitante) 
VALUES (372689145, 'Supervisor', 'Laura Martin', 5432109876, 'Ana Garcia');
INSERT INTO CONTACTO (tlf, cargo, nombre_contacto, fax, nombre_solicitante) 
VALUES (619234807, 'Analista', 'Manuel Sanchez', 4321098765, 'Manuel Sanchez');
INSERT INTO CONTACTO (tlf, cargo, nombre_contacto, fax, nombre_solicitante) 
VALUES (789012345, 'Asistente', 'Carmen Ruiz', 3210987654, 'Carmen Ruiz');
INSERT INTO CONTACTO (tlf, cargo, nombre_contacto, fax, nombre_solicitante) 
VALUES (890123456, 'Representante', 'Javier Fernandez', 2109876543, 'Javier Fernandez');
INSERT INTO CONTACTO (tlf, cargo, nombre_contacto, fax, nombre_solicitante) 
VALUES (901234567, 'Especialista', 'Raquel Lopez', 1098765432, 'Raquel Lopez');
INSERT INTO CONTACTO (tlf, cargo, nombre_contacto, fax, nombre_solicitante) 
VALUES (485372916, 'Coordinador', 'Pedro Garcia', 9876543210, 'Pedro Garcia');
INSERT INTO CONTACTO (tlf, cargo, nombre_contacto, fax, nombre_solicitante) 
VALUES (234567890, 'Gerente', 'Elena Garcia', 8765432109, 'Marta Perez');
INSERT INTO CONTACTO (tlf, cargo, nombre_contacto, fax, nombre_solicitante) 
VALUES (345678901, 'Analista', 'Jose Martinez', 7654321098, 'Jose Martinez');
INSERT INTO CONTACTO (tlf, cargo, nombre_contacto, fax, nombre_solicitante) 
VALUES (456789012, 'Asistente', 'Laura Martin', 6543210987, 'Elena Garcia');
INSERT INTO CONTACTO (tlf, cargo, nombre_contacto, fax, nombre_solicitante) 
VALUES (567890123, 'Representante', 'David Sanchez', 5432109876, 'David Sanchez');
INSERT INTO CONTACTO (tlf, cargo, nombre_contacto, fax, nombre_solicitante) 
VALUES (678901234, 'Especialista', 'Laura Martin', 4321098765, 'Laura Martin');

-- COMPONENTE 
INSERT INTO COMPONENTE (nombre_comun, tipo, funcion, denominacion_quimica, numeros, formulas, peso_molecular, contenido) 
VALUES ('Componente A', 'Quimico', 'Reactivo', 'Hidroxido de sodio', 'NaOH', 'Na+ + OH-', 39.997, 'Solido');
INSERT INTO COMPONENTE (nombre_comun, tipo, funcion, denominacion_quimica, numeros, formulas, peso_molecular, contenido) 
VALUES ('Componente B', 'Organico', 'Solvente', 'Acetona', 'C3H6O', 'CH3COCH3', 58.080, 'Liquido');
INSERT INTO COMPONENTE (nombre_comun, tipo, funcion, denominacion_quimica, numeros, formulas, peso_molecular, contenido) 
VALUES ('Componente C', 'Inorganico', 'Catalizador', 'Platino', 'Pt', 'Pt', 195.084, 'Solido');
INSERT INTO COMPONENTE (nombre_comun, tipo, funcion, denominacion_quimica, numeros, formulas, peso_molecular, contenido) 
VALUES ('Componente D', 'Organico', 'Polimero', 'Polietileno', 'C2H4', '(CH2-CH2)n', 28.054, 'Solido');
INSERT INTO COMPONENTE (nombre_comun, tipo, funcion, denominacion_quimica, numeros, formulas, peso_molecular, contenido) 
VALUES ('Componente E', 'Inorganico', 'Acido', 'Acido sulfurico', 'H2SO4', 'H2O + SO3', 98.079, 'Liquido');
INSERT INTO COMPONENTE (nombre_comun, tipo, funcion, denominacion_quimica, numeros, formulas, peso_molecular, contenido) 
VALUES ('Componente F', 'Organico', 'Colorante', 'Azul de metileno', 'C16H18ClN3S', 'C16H18ClN3S', 319.851, 'Polvo');
INSERT INTO COMPONENTE (nombre_comun, tipo, funcion, denominacion_quimica, numeros, formulas, peso_molecular, contenido) 
VALUES ('Componente G', 'Inorganico', 'Sal', 'Cloruro de sodio', 'NaCl', 'Na+ + Cl-', 58.443, 'Cristales');
INSERT INTO COMPONENTE (nombre_comun, tipo, funcion, denominacion_quimica, numeros, formulas, peso_molecular, contenido) 
VALUES ('Componente H', 'Quimico', 'Reactivo', 'Acido clorhidrico', 'HCl', 'H+ + Cl-', 36.461, 'Liquido');
INSERT INTO COMPONENTE (nombre_comun, tipo, funcion, denominacion_quimica, numeros, formulas, peso_molecular, contenido) 
VALUES ('Componente I', 'Organico', 'Solvente', 'Etanol', 'C2H5OH', 'C2H5OH', 46.070, 'Liquido');
INSERT INTO COMPONENTE (nombre_comun, tipo, funcion, denominacion_quimica, numeros, formulas, peso_molecular, contenido) 
VALUES ('Componente J', 'Inorganico', 'Catalizador', 'Oxido de zinc', 'ZnO', 'ZnO', 81.379, 'Polvo');
INSERT INTO COMPONENTE (nombre_comun, tipo, funcion, denominacion_quimica, numeros, formulas, peso_molecular, contenido) 
VALUES ('Componente K', 'Organico', 'Polimero', 'Polipropileno', 'C3H6', '(C3H6)n', 42.081, 'Solido');
INSERT INTO COMPONENTE (nombre_comun, tipo, funcion, denominacion_quimica, numeros, formulas, peso_molecular, contenido) 
VALUES ('Componente L', 'Inorganico', 'Acido', 'Acido nitrico', 'HNO3', 'HNO3', 63.013, 'Liquido');
INSERT INTO COMPONENTE (nombre_comun, tipo, funcion, denominacion_quimica, numeros, formulas, peso_molecular, contenido) 
VALUES ('Componente M', 'Organico', 'Colorante', 'Rojo de alizarina', 'C14H8O4', 'C14H8O4', 240.210, 'Polvo');
INSERT INTO COMPONENTE (nombre_comun, tipo, funcion, denominacion_quimica, numeros, formulas, peso_molecular, contenido) 
VALUES ('Componente N', 'Inorganico', 'Sal', 'Sulfato de magnesio', 'MgSO4', 'Mg2+ + SO4^2-', 120.366, 'Cristales');
INSERT INTO COMPONENTE (nombre_comun, tipo, funcion, denominacion_quimica, numeros, formulas, peso_molecular, contenido) 
VALUES ('Componente O', 'Quimico', 'Reactivo', 'Bromuro de potasio', 'KBr', 'K+ + Br-', 119.002, 'Cristales');






-- SUSTANCIA ACTIVA 
INSERT INTO SUSTANCIA_ACTIVA (cod_desarrollo, nombre_comun, fecha_registro, nombre_quimico, numeros, formulas, pureza, perfil_analitico, funcion, efectos_org_nocivos,
ambito_utilizacion, modo_accion, metodos_precauciones, procedimientos_destruccion, medidas_emergencia, informacion_3_4, informacion_3_6, informacion_3_7,
evaluacion_ambiental, estudios_ecotoxicologicos, punto_fusion, punto_ebullicion, densidad_relativa, volatilidad, presion_vapor, aspecto, espectros,
extincion_molecular, solubilidad_agua, solubilidad_organicos, coeficiente_particion, inflamabilidad, punto_inflamacion, propiedades_explosivas,
tension_superficial, propiedades_comburentes, informacion_2_9, informacion_2_10)
VALUES (1000001, 'Parafina', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'QuimicoA', '123', 'C4H6O2', 'Alta', 'Perfil A', 'Fungicida', 'Accion por ingestion', 'Ambito A', 'Modo A', 'Precauciones A', 'Destruccion A', 'Emergencia A', 'Info 3.4 A', 'Info 3.6 A', 'Info 3.7 A', 'Evaluacion A', 'Ecotoxicologia A',
100, 200, 1.05, 'Baja', 'Baja', 'Liquido', 'Espectros A', 'Extincion A', 'Solubilidad Agua A', 'Solubilidad Organicos A', 'Coeficiente A', 'No Inflamable',
75, 'No Explosivas', 'Alta', 'No Comburentes', 'Info 2.9 A', 'Info 2.10 A');

INSERT INTO SUSTANCIA_ACTIVA (cod_desarrollo, nombre_comun, fecha_registro, nombre_quimico, numeros, formulas, pureza, perfil_analitico, funcion, efectos_org_nocivos,
ambito_utilizacion, modo_accion, metodos_precauciones, procedimientos_destruccion, medidas_emergencia, informacion_3_4, informacion_3_6, informacion_3_7,
evaluacion_ambiental, estudios_ecotoxicologicos, punto_fusion, punto_ebullicion, densidad_relativa, volatilidad, presion_vapor, aspecto, espectros,
extincion_molecular, solubilidad_agua, solubilidad_organicos, coeficiente_particion, inflamabilidad, punto_inflamacion, propiedades_explosivas,
tension_superficial, propiedades_comburentes, informacion_2_9, informacion_2_10)
VALUES 
(1000002, 'Glifosato', TO_DATE('2022-02-01', 'YYYY-MM-DD'), 'QuimicoB', '456', 'C6H8O3', 'Media', 'Perfil B', 'Acaricida', 'Desecante',
'Ambito B', 'Modo B', 'Precauciones B', 'Destruccion B', 'Emergencia B', 'Info 3.4 B', 'Info 3.6 B', 'Info 3.7 B', 'Evaluacion B', 'Ecotoxicologia B',
150, 250, 1.20, 'Media', 'Media', 'Polvo', 'Espectros B', 'Extincion B', 'Solubilidad Agua B', 'Solubilidad Organicos B', 'Coeficiente B', 'Ligeramente Inflamable',
80, 'No Explosivas', 'Media', 'Comburentes', 'Info 2.9 B', 'Info 2.10 B');

INSERT INTO SUSTANCIA_ACTIVA (cod_desarrollo, nombre_comun, fecha_registro, nombre_quimico, numeros, formulas, pureza, perfil_analitico, funcion, efectos_org_nocivos,
ambito_utilizacion, modo_accion, metodos_precauciones, procedimientos_destruccion, medidas_emergencia, informacion_3_4, informacion_3_6, informacion_3_7,
evaluacion_ambiental, estudios_ecotoxicologicos, punto_fusion, punto_ebullicion, densidad_relativa, volatilidad, presion_vapor, aspecto, espectros,
extincion_molecular, solubilidad_agua, solubilidad_organicos, coeficiente_particion, inflamabilidad, punto_inflamacion, propiedades_explosivas,
tension_superficial, propiedades_comburentes, informacion_2_9, informacion_2_10)
VALUES (1000003, 'Niacina', TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'QuimicoC', '789', 'C8H10O4', 'Alta', 'Perfil C', 'Herbicida', 'Accion por contacto',
'Ambito C', 'Modo C', 'Precauciones C', 'Destruccion C', 'Emergencia C', 'Info 3.4 C', 'Info 3.6 C', 'Info 3.7 C', 'Evaluacion C', 'Ecotoxicologia C',
120, 220, 1.15, 'Alta', 'Alta', 'Granulado', 'Espectros C', 'Extincion C', 'Solubilidad Agua C', 'Solubilidad Organicos C', 'Coeficiente C', 'No Inflamable',
90, 'No Explosivas', 'Alta', 'No Comburentes', 'Info 2.9 C', 'Info 2.10 C');

INSERT INTO SUSTANCIA_ACTIVA (cod_desarrollo, nombre_comun, fecha_registro, nombre_quimico, numeros, formulas, pureza, perfil_analitico, funcion, efectos_org_nocivos,
ambito_utilizacion, modo_accion, metodos_precauciones, procedimientos_destruccion, medidas_emergencia, informacion_3_4, informacion_3_6, informacion_3_7,
evaluacion_ambiental, estudios_ecotoxicologicos, punto_fusion, punto_ebullicion, densidad_relativa, volatilidad, presion_vapor, aspecto, espectros,
extincion_molecular, solubilidad_agua, solubilidad_organicos, coeficiente_particion, inflamabilidad, punto_inflamacion, propiedades_explosivas,
tension_superficial, propiedades_comburentes, informacion_2_9, informacion_2_10)
VALUES (1000004, 'Ranitidina', TO_DATE('2022-04-01', 'YYYY-MM-DD'), 'QuimicoD', '101', 'C5H12', 'Media', 'Perfil D', 'Rodenticida', 'Acción fungitóxica',
'Ambito D', 'Modo D', 'Precauciones D', 'Destruccion D', 'Emergencia D', 'Info 3.4 D', 'Info 3.6 D', 'Info 3.7 D', 'Evaluacion D', 'Ecotoxicologia D',
130, 240, 1.18, 'Media', 'Media', 'Líquido', 'Espectros D', 'Extincion D', 'Solubilidad Agua D', 'Solubilidad Organicos D', 'Coeficiente D', 'Ligeramente Inflamable',
85, 'No Explosivas', 'Media', 'Comburentes', 'Info 2.9 D', 'Info 2.10 D');


-- Relacion entre sustancias activas y sus solicitantes
-- Solicitudes para sustancias activas con su respectiva fecha
INSERT INTO SOLICITA_SUST_ACTIVA (nombre_solicitante, cod_desarrollo, fecha)
VALUES ('David Sanchez', 1000001, TO_DATE('2023-01-04', 'YYYY-MM-DD'));
INSERT INTO SOLICITA_SUST_ACTIVA (nombre_solicitante, cod_desarrollo, fecha)
VALUES ('Antonio Garcia', 1000002, TO_DATE('2022-02-01', 'YYYY-MM-DD'));
INSERT INTO SOLICITA_SUST_ACTIVA (nombre_solicitante, cod_desarrollo, fecha)
VALUES ('Isabel Martinez', 1000003, TO_DATE('2023-01-23', 'YYYY-MM-DD'));
INSERT INTO SOLICITA_SUST_ACTIVA (nombre_solicitante, cod_desarrollo, fecha)
VALUES ('Francisco Rodriguez', 1000004, TO_DATE('2022-04-01', 'YYYY-MM-DD'));

-- Relacion entre sustancias activas y sus componentes
-- Componentes de la sustancia activa 1000001
INSERT INTO FORMADO (cod_desarrollo, nombre_comun_componente)
VALUES (1000001, 'Componente A');
INSERT INTO FORMADO (cod_desarrollo, nombre_comun_componente)
VALUES (1000001, 'Componente B');
INSERT INTO FORMADO (cod_desarrollo, nombre_comun_componente)
VALUES (1000001, 'Componente C');
INSERT INTO FORMADO (cod_desarrollo, nombre_comun_componente)
VALUES (1000001, 'Componente D');

-- Componentes de la sustancia activa 1000002
INSERT INTO FORMADO (cod_desarrollo, nombre_comun_componente)
VALUES (1000002, 'Componente D');
INSERT INTO FORMADO (cod_desarrollo, nombre_comun_componente)
VALUES (1000002, 'Componente E');
INSERT INTO FORMADO (cod_desarrollo, nombre_comun_componente)
VALUES (1000002, 'Componente F');

-- Componentes de la sustancia activa 1000003
INSERT INTO FORMADO (cod_desarrollo, nombre_comun_componente)
VALUES (1000003, 'Componente F');
INSERT INTO FORMADO (cod_desarrollo, nombre_comun_componente)
VALUES (1000003, 'Componente G');
INSERT INTO FORMADO (cod_desarrollo, nombre_comun_componente)
VALUES (1000003, 'Componente H');
INSERT INTO FORMADO (cod_desarrollo, nombre_comun_componente)
VALUES (1000003, 'Componente I');

-- Componentes de la sustancia activa 1000004
INSERT INTO FORMADO (cod_desarrollo, nombre_comun_componente)
VALUES (1000004, 'Componente J');
INSERT INTO FORMADO (cod_desarrollo, nombre_comun_componente)
VALUES (1000004, 'Componente K');
INSERT INTO FORMADO (cod_desarrollo, nombre_comun_componente)
VALUES (1000004, 'Componente L');
INSERT INTO FORMADO (cod_desarrollo, nombre_comun_componente)
VALUES (1000004, 'Componente M');
INSERT INTO FORMADO (cod_desarrollo, nombre_comun_componente)
VALUES (1000004, 'Componente N');
INSERT INTO FORMADO (cod_desarrollo, nombre_comun_componente)
VALUES (1000004, 'Componente O');


-- Relacion entre sustancias activas y fabricantes
-- Fabricante de la sustancia activa 1000001
INSERT INTO FABRICARSE (cod_desarrollo, nombre_fabricante)
VALUES (1000001, 'Empresa A');
INSERT INTO FABRICARSE (cod_desarrollo, nombre_fabricante)
VALUES (1000001, 'Empresa E');

-- Fabricante de la sustancia activa 1000002
INSERT INTO FABRICARSE (cod_desarrollo, nombre_fabricante)
VALUES (1000002, 'Empresa B');

-- Fabricante de la sustancia activa 1000003
INSERT INTO FABRICARSE (cod_desarrollo, nombre_fabricante)
VALUES (1000003, 'Empresa C');
INSERT INTO FABRICARSE (cod_desarrollo, nombre_fabricante)
VALUES (1000003, 'Empresa F');
INSERT INTO FABRICARSE (cod_desarrollo, nombre_fabricante)
VALUES (1000003, 'Empresa G');

-- Fabricante de la sustancia activa 1000004
INSERT INTO FABRICARSE (cod_desarrollo, nombre_fabricante)
VALUES (1000004, 'Empresa D');
INSERT INTO FABRICARSE (cod_desarrollo, nombre_fabricante)
VALUES (1000004, 'Empresa H');
INSERT INTO FABRICARSE (cod_desarrollo, nombre_fabricante)
VALUES (1000004, 'Empresa I');
INSERT INTO FABRICARSE (cod_desarrollo, nombre_fabricante)
VALUES (1000004, 'Empresa J');



-- MICROORGANISMO
INSERT INTO MICROORGANISMO (numero_entrada, nombre_cientifico, nombres, descripcion_especie, taxonomia, especificaciones, metodos_criterios, nombre, codigos, relaciones_patogenos)
VALUES (1, 'Canis lupus', 'Lobo gris', 'Especie de mamífero carnívoro de la familia de los cánidos', 'Animalia > Chordata > Mammalia > Carnivora > Canidae > Canis', 'Peso: 30-50kg, Altura: 80-85cm', 'Evitar contacto directo, pueden ser agresivos si se sienten amenazados', 'Lobo', 'CL001', 'No es un patógeno');
INSERT INTO MICROORGANISMO (numero_entrada, nombre_cientifico, nombres, descripcion_especie, taxonomia, especificaciones, metodos_criterios, nombre, codigos, relaciones_patogenos)
VALUES (2, 'Felis catus', 'Gato', 'Especie de mamífero carnívoro de la familia Felidae', 'Animalia > Chordata > Mammalia > Carnivora > Felidae > Felis', 'Peso: 3-5kg, Altura: 20-30cm', 'Evitar contacto directo, pueden ser agresivos si se sienten amenazados', 'Gato', 'FC001', 'No es un patógeno');
INSERT INTO MICROORGANISMO (numero_entrada, nombre_cientifico, nombres, descripcion_especie, taxonomia, especificaciones, metodos_criterios, nombre, codigos, relaciones_patogenos)
VALUES (3, 'Equus ferus caballus', 'Caballo', 'Especie de mamífero perisodáctilo domesticado de la familia de los équidos', 'Animalia > Chordata > Mammalia > Perissodactyla > Equidae > Equus', 'Peso: 380-1000kg, Altura: 1,4-1,8m', 'Evitar contacto directo, pueden ser agresivos si se sienten amenazados', 'Caballo', 'EFC001', 'No es un patógeno');
INSERT INTO MICROORGANISMO (numero_entrada, nombre_cientifico, nombres, descripcion_especie, taxonomia, especificaciones, metodos_criterios, nombre, codigos, relaciones_patogenos)
VALUES (4, 'Bos taurus', 'Vaca', 'Especie de mamífero artiodáctilo de la familia de los bóvidos', 'Animalia > Chordata > Mammalia > Artiodactyla > Bovidae > Bos', 'Peso: 500-800kg, Altura: 1,4-1,8m', 'Evitar contacto directo, pueden ser agresivos si se sienten amenazados', 'Vaca', 'BT001', 'No es un patógeno');    


-- PRODUCTOR
INSERT INTO PRODUCTOR (nombre_productor, direccion)
VALUES ('Productor A', 'Calle del Abedul, 29, Arroyomolinos');
INSERT INTO PRODUCTOR (nombre_productor, direccion)
VALUES ('Productor B', 'Avenida de las Acacias, 15, Alcobendas');
INSERT INTO PRODUCTOR (nombre_productor, direccion)
VALUES ('Productor C', 'Calle del Alamo, 23, Alcorcon');
INSERT INTO PRODUCTOR (nombre_productor, direccion)
VALUES ('Productor D', 'Paseo de la Rosa, 23, Getafe');
INSERT INTO PRODUCTOR (nombre_productor, direccion)
VALUES ('Productor E', 'Carrera del Sol, 10, Majadahonda');
INSERT INTO PRODUCTOR (nombre_productor, direccion)
VALUES ('Productor F', 'Paseo de la Luna, 30, Boadilla del Monte');
INSERT INTO PRODUCTOR (nombre_productor, direccion)
VALUES ('Productor G', 'Avenida de la Playa, 15, Barcelona');
INSERT INTO PRODUCTOR (nombre_productor, direccion)
VALUES ('Productor H', 'Calle del Bosque, 29, San Sebastián');
INSERT INTO PRODUCTOR (nombre_productor, direccion)
VALUES ('Productor I', 'Calle Carrera de la Sierra, 15, Granada');


-- CONTACTO_PRODUCTOR
INSERT INTO CONTACTO_PRODUCTOR (tlf, tipo, nombre_contacto, fax, nombre_productor)
VALUES (873249561, 'Central', 'Santiago García', 5018372946, 'Productor A');
INSERT INTO CONTACTO_PRODUCTOR (tlf, tipo, nombre_contacto, fax, nombre_productor)
VALUES (605817392, 'Oficina', 'Isabella López', 8246953717, 'Productor B');
INSERT INTO CONTACTO_PRODUCTOR (tlf, tipo, nombre_contacto, fax, nombre_productor)
VALUES (428196753, 'Central', 'Lucas Torres', 3691475820, 'Productor C');
INSERT INTO CONTACTO_PRODUCTOR (tlf, tipo, nombre_contacto, fax, nombre_productor)
VALUES (362598147, 'Departamento', 'Martina Vargas', 7258309146, 'Productor D');
INSERT INTO CONTACTO_PRODUCTOR (tlf, tipo, nombre_contacto, fax, nombre_productor)
VALUES (836124975, 'Central', 'Emilia Jiménez', 1849275036, 'Productor E');
INSERT INTO CONTACTO_PRODUCTOR (tlf, tipo, nombre_contacto, fax, nombre_productor)
VALUES (795146238, 'Central', 'Leonardo Pérez', 6325901487, 'Productor F');
INSERT INTO CONTACTO_PRODUCTOR (tlf, tipo, nombre_contacto, fax, nombre_productor)
VALUES (341982756, 'Oficina', 'Marcos Ramírez', 9174682305, 'Productor G');
INSERT INTO CONTACTO_PRODUCTOR (tlf, tipo, nombre_contacto, fax, nombre_productor)
VALUES (134859672, 'Central', 'Tomás Silva', 4032817569, 'Productor H');
INSERT INTO CONTACTO_PRODUCTOR (tlf, tipo, nombre_contacto, fax, nombre_productor)  
VALUES (967315284, 'Oficina', 'Catalina Herrera', 7518249603, 'Productor I');



-- Instalaciones de los productores
-- Una instalacion solo puede pertenecer a un productor
-- Instalaciones de productor A
INSERT INTO INSTALACION (nombre_instalacion, direccion, nombre_productor)
VALUES ('Instalacion A', 'Camiño Real, 63, Barrika', 'Productor A');
INSERT INTO INSTALACION (nombre_instalacion, direccion, nombre_productor)
VALUES ('Instalacion B', 'Fuente del Gallo, 15, Ponteceso', 'Productor B');

-- Instalaciones de productor B
INSERT INTO INSTALACION (nombre_instalacion, direccion, nombre_productor)
VALUES ('Instalacion C', 'Avda. de Andalucía, 23, Antequera', 'Productor B');
INSERT INTO INSTALACION (nombre_instalacion, direccion, nombre_productor)
VALUES ('Instalacion D', 'Visitación de la Encina, 14, Navamorales', 'Productor B');
INSERT INTO INSTALACION (nombre_instalacion, direccion, nombre_productor)
VALUES ('Instalacion E', 'Carrera del Sol, 10, Majadahonda', 'Productor B');

-- Instalaciones de productor C
INSERT INTO INSTALACION (nombre_instalacion, direccion, nombre_productor)
VALUES ('Instalacion F', 'Paseo de la Luna, 30, Boadilla del Monte', 'Productor C');

-- Instalaciones de productor D
INSERT INTO INSTALACION (nombre_instalacion, direccion, nombre_productor)
VALUES ('Instalacion G', 'Avenida de la Playa, 15, Barcelona', 'Productor D');

-- Instalaciones de productor E
INSERT INTO INSTALACION (nombre_instalacion, direccion, nombre_productor)
VALUES ('Instalacion H', 'Calle del Bosque, 29, San Sebastián', 'Productor E');
INSERT INTO INSTALACION (nombre_instalacion, direccion, nombre_productor)
VALUES ('Instalacion I', 'Calle Carrera de la Sierra, 15, Granada', 'Productor E');

-- Instalaciones de productor F
INSERT INTO INSTALACION (nombre_instalacion, direccion, nombre_productor)
VALUES ('Instalacion J', 'Calle del Abedul, 29, Arroyomolinos', 'Productor F');
INSERT INTO INSTALACION (nombre_instalacion, direccion, nombre_productor)
VALUES ('Instalacion K', 'Avenida de las Acacias, 15, Alcobendas', 'Productor F');

-- Instalaciones de productor G
INSERT INTO INSTALACION (nombre_instalacion, direccion, nombre_productor)
VALUES ('Instalacion L', 'Calle del Alamo, 23, Alcorcon', 'Productor G');

-- Instalaciones de productor H
INSERT INTO INSTALACION (nombre_instalacion, direccion, nombre_productor)
VALUES ('Instalacion M', 'Paseo de la Rosa, 23, Getafe', 'Productor H');
INSERT INTO INSTALACION (nombre_instalacion, direccion, nombre_productor)
VALUES ('Instalacion N', 'Carrera del Sol, 10, Majadahonda', 'Productor H');
INSERT INTO INSTALACION (nombre_instalacion, direccion, nombre_productor)
VALUES ('Instalacion O', 'Paseo de la Luna, 30, Boadilla del Monte', 'Productor H');
INSERT INTO INSTALACION (nombre_instalacion, direccion, nombre_productor)
VALUES ('Instalacion P', 'Avenida de la Playa, 15, Barcelona', 'Productor H');

-- Instalaciones de productor I
INSERT INTO INSTALACION (nombre_instalacion, direccion, nombre_productor)
VALUES ('Instalacion Q', 'Calle del Bosque, 29, San Sebastián', 'Productor I');



-- Relacion entre microorganismos y sus productores
-- Un microorganismo puede ser producido por varios productores
-- Un productor puede producir varios microorganismos
-- Productores de microorganismo 1
INSERT INTO PRODUCE (numero_entrada, nombre_productor)
VALUES (1, 'Productor A');
INSERT INTO PRODUCE (numero_entrada, nombre_productor)
VALUES (1, 'Productor B');
INSERT INTO PRODUCE (numero_entrada, nombre_productor)
VALUES (1, 'Productor C');

-- Productores de microorganismo 2
INSERT INTO PRODUCE (numero_entrada, nombre_productor)
VALUES (2, 'Productor B');
INSERT INTO PRODUCE (numero_entrada, nombre_productor)
VALUES (2, 'Productor D');

-- Productores de microorganismo 3
INSERT INTO PRODUCE (numero_entrada, nombre_productor)
VALUES (3, 'Productor E');
INSERT INTO PRODUCE (numero_entrada, nombre_productor)
VALUES (3, 'Productor F');
INSERT INTO PRODUCE (numero_entrada, nombre_productor)
VALUES (3, 'Productor G');
INSERT INTO PRODUCE (numero_entrada, nombre_productor)
VALUES (3, 'Productor H');

-- Productores de microorganismo 4
INSERT INTO PRODUCE (numero_entrada, nombre_productor)
VALUES (4, 'Productor I');



-- Relacion entre microorganismos y sus solicitantes
-- Solicitudes para microorganismos con su respectiva fecha
-- Solicitudes para microorganismo 1
INSERT INTO SOLICITA_MICROORGANISMO (nombre_solicitante, numero_entrada, fecha)
VALUES ('Maria Lopez', 1, TO_DATE('2023-01-04', 'YYYY-MM-DD'));
INSERT INTO SOLICITA_MICROORGANISMO (nombre_solicitante, numero_entrada, fecha)
VALUES ('Antonio Garcia', 1, TO_DATE('2018-11-29', 'YYYY-MM-DD'));
INSERT INTO SOLICITA_MICROORGANISMO (nombre_solicitante, numero_entrada, fecha)
VALUES ('Laura Martin', 1, TO_DATE('2019-03-24', 'YYYY-MM-DD'));

-- Solicitudes para microorganismo 2
INSERT INTO SOLICITA_MICROORGANISMO (nombre_solicitante, numero_entrada, fecha)
VALUES ('Antonio Garcia', 2, TO_DATE('2022-02-01', 'YYYY-MM-DD'));
INSERT INTO SOLICITA_MICROORGANISMO (nombre_solicitante, numero_entrada, fecha)
VALUES ('Ana Garcia', 2, TO_DATE('2023-01-23', 'YYYY-MM-DD'));

-- Solicitudes para microorganismo 3
-- No hay solicitudes para el microorganismo 3

-- Solicitudes para microorganismo 4
INSERT INTO SOLICITA_MICROORGANISMO (nombre_solicitante, numero_entrada, fecha)
VALUES ('Francisco Rodriguez', 4, TO_DATE('2019-02-02', 'YYYY-MM-DD'));
INSERT INTO SOLICITA_MICROORGANISMO (nombre_solicitante, numero_entrada, fecha)
VALUES ('Manuel Sanchez', 4, TO_DATE('2022-04-01', 'YYYY-MM-DD'));
INSERT INTO SOLICITA_MICROORGANISMO (nombre_solicitante, numero_entrada, fecha)
VALUES ('Pedro Garcia', 4, TO_DATE('2020-07-09', 'YYYY-MM-DD'));
INSERT INTO SOLICITA_MICROORGANISMO (nombre_solicitante, numero_entrada, fecha)
VALUES ('Elena Garcia', 4, TO_DATE('2021-12-04', 'YYYY-MM-DD'));



COMMIT;