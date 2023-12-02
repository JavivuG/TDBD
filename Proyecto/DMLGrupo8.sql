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
INSERT INTO FABRICANTE (nombre_fabricante, direccion) 
VALUES ('Empresa K', 'Plaza del Progreso, 67, Sevilla');
INSERT INTO FABRICANTE (nombre_fabricante, direccion) 
VALUES ('Empresa L', 'Calle Innovacion, 89, Barcelona');
INSERT INTO FABRICANTE (nombre_fabricante, direccion) 
VALUES ('Empresa M', 'Paseo del Desarrollo, 12, Madrid');
INSERT INTO FABRICANTE (nombre_fabricante, direccion) 
VALUES ('Empresa N', 'Avenida del Avance, 34, Valencia');
INSERT INTO FABRICANTE (nombre_fabricante, direccion) 
VALUES ('Empresa O', 'Calle Futuro, 56, Sevilla');

-- CONTACTO 
INSERT INTO CONTACTO (tlf, cargo, nombre_contacto, fax, nombre_solicitante) 
VALUES (123456789, 'Gerente', 'Juan Perez', 9876543210, 'Maria Lopez');
INSERT INTO CONTACTO (tlf, cargo, nombre_contacto, fax, nombre_solicitante) 
VALUES (234567890, 'Director', 'Ana Garcia', 8765432109, 'Antonio Garcia');
INSERT INTO CONTACTO (tlf, cargo, nombre_contacto, fax, nombre_solicitante) 
VALUES (345678901, 'Jefe de Ventas', 'Marta Perez', 7654321098, 'Isabel Martinez');
INSERT INTO CONTACTO (tlf, cargo, nombre_contacto, fax, nombre_solicitante) 
VALUES (456789012, 'Coordinador', 'David Sanchez', 6543210987, 'Francisco Rodriguez');
INSERT INTO CONTACTO (tlf, cargo, nombre_contacto, fax, nombre_solicitante) 
VALUES (567890123, 'Supervisor', 'Laura Martin', 5432109876, 'Ana Garcia');
INSERT INTO CONTACTO (tlf, cargo, nombre_contacto, fax, nombre_solicitante) 
VALUES (678901234, 'Analista', 'Manuel Sanchez', 4321098765, 'Manuel Sanchez');
INSERT INTO CONTACTO (tlf, cargo, nombre_contacto, fax, nombre_solicitante) 
VALUES (789012345, 'Asistente', 'Carmen Ruiz', 3210987654, 'Carmen Ruiz');
INSERT INTO CONTACTO (tlf, cargo, nombre_contacto, fax, nombre_solicitante) 
VALUES (890123456, 'Representante', 'Javier Fernandez', 2109876543, 'Javier Fernandez');
INSERT INTO CONTACTO (tlf, cargo, nombre_contacto, fax, nombre_solicitante) 
VALUES (901234567, 'Especialista', 'Raquel Lopez', 1098765432, 'Raquel Lopez');
INSERT INTO CONTACTO (tlf, cargo, nombre_contacto, fax, nombre_solicitante) 
VALUES (123456789, 'Coordinador', 'Pedro Garcia', 9876543210, 'Pedro Garcia');
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


-- COMPONENTE 
INSERT INTO COMPONENTE (nombre_comun, tipo, funcion, denominacion_quimica, numeros, formulas, peso_molecular, contenido) 
VALUES ('Componente A', 'Químico', 'Reactivo', 'Hidróxido de sodio', 'NaOH', 'Na+ + OH-', 39.997, 'Sólido');
INSERT INTO COMPONENTE (nombre_comun, tipo, funcion, denominacion_quimica, numeros, formulas, peso_molecular, contenido) 
VALUES ('Componente B', 'Orgánico', 'Solvente', 'Acetona', 'C3H6O', 'CH3COCH3', 58.080, 'Líquido');
INSERT INTO COMPONENTE (nombre_comun, tipo, funcion, denominacion_quimica, numeros, formulas, peso_molecular, contenido) 
VALUES ('Componente C', 'Inorgánico', 'Catalizador', 'Platino', 'Pt', 'Pt', 195.084, 'Sólido');
INSERT INTO COMPONENTE (nombre_comun, tipo, funcion, denominacion_quimica, numeros, formulas, peso_molecular, contenido) 
VALUES ('Componente D', 'Orgánico', 'Polímero', 'Polietileno', 'C2H4', '(CH2-CH2)n', 28.054, 'Sólido');
INSERT INTO COMPONENTE (nombre_comun, tipo, funcion, denominacion_quimica, numeros, formulas, peso_molecular, contenido) 
VALUES ('Componente E', 'Inorgánico', 'Ácido', 'Ácido sulfúrico', 'H2SO4', 'H2O + SO3', 98.079, 'Líquido');
INSERT INTO COMPONENTE (nombre_comun, tipo, funcion, denominacion_quimica, numeros, formulas, peso_molecular, contenido) 
VALUES ('Componente F', 'Orgánico', 'Colorante', 'Azul de metileno', 'C16H18ClN3S', 'C16H18ClN3S', 319.851, 'Polvo');
INSERT INTO COMPONENTE (nombre_comun, tipo, funcion, denominacion_quimica, numeros, formulas, peso_molecular, contenido) 
VALUES ('Componente G', 'Inorgánico', 'Sal', 'Cloruro de sodio', 'NaCl', 'Na+ + Cl-', 58.443, 'Cristales');
INSERT INTO COMPONENTE (nombre_comun, tipo, funcion, denominacion_quimica, numeros, formulas, peso_molecular, contenido) 
VALUES ('Componente H', 'Químico', 'Reactivo', 'Ácido clorhídrico', 'HCl', 'H+ + Cl-', 36.461, 'Líquido');
INSERT INTO COMPONENTE (nombre_comun, tipo, funcion, denominacion_quimica, numeros, formulas, peso_molecular, contenido) 
VALUES ('Componente I', 'Orgánico', 'Solvente', 'Etanol', 'C2H5OH', 'C2H5OH', 46.070, 'Líquido');
INSERT INTO COMPONENTE (nombre_comun, tipo, funcion, denominacion_quimica, numeros, formulas, peso_molecular, contenido) 
VALUES ('Componente J', 'Inorgánico', 'Catalizador', 'Óxido de zinc', 'ZnO', 'ZnO', 81.379, 'Polvo');
INSERT INTO COMPONENTE (nombre_comun, tipo, funcion, denominacion_quimica, numeros, formulas, peso_molecular, contenido) 
VALUES ('Componente K', 'Orgánico', 'Polímero', 'Polipropileno', 'C3H6', '(C3H6)n', 42.081, 'Sólido');
INSERT INTO COMPONENTE (nombre_comun, tipo, funcion, denominacion_quimica, numeros, formulas, peso_molecular, contenido) 
VALUES ('Componente L', 'Inorgánico', 'Ácido', 'Ácido nítrico', 'HNO3', 'HNO3', 63.013, 'Líquido');
INSERT INTO COMPONENTE (nombre_comun, tipo, funcion, denominacion_quimica, numeros, formulas, peso_molecular, contenido) 
VALUES ('Componente M', 'Orgánico', 'Colorante', 'Rojo de alizarina', 'C14H8O4', 'C14H8O4', 240.210, 'Polvo');
INSERT INTO COMPONENTE (nombre_comun, tipo, funcion, denominacion_quimica, numeros, formulas, peso_molecular, contenido) 
VALUES ('Componente N', 'Inorgánico', 'Sal', 'Sulfato de magnesio', 'MgSO4', 'Mg2+ + SO4^2-', 120.366, 'Cristales');
INSERT INTO COMPONENTE (nombre_comun, tipo, funcion, denominacion_quimica, numeros, formulas, peso_molecular, contenido) 
VALUES ('Componente O', 'Químico', 'Reactivo', 'Bromuro de potasio', 'KBr', 'K+ + Br-', 119.002, 'Cristales');


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
INSERT INTO FABRICA (nombre_fabrica, direccion, metodo_fabricacion, nombre_fabricante) 
VALUES ('Fabrica K', 'Plaza del Progreso, 67, Sevilla', 'Produccion personalizada', 'Empresa K');
INSERT INTO FABRICA (nombre_fabrica, direccion, metodo_fabricacion, nombre_fabricante) 
VALUES ('Fabrica L', 'Calle Innovacion, 89, Barcelona', 'Produccion en cadena', 'Empresa L');
INSERT INTO FABRICA (nombre_fabrica, direccion, metodo_fabricacion, nombre_fabricante) 
VALUES ('Fabrica M', 'Paseo del Desarrollo, 12, Madrid', 'Fabricacion artesanal', 'Empresa M');
INSERT INTO FABRICA (nombre_fabrica, direccion, metodo_fabricacion, nombre_fabricante) 
VALUES ('Fabrica N', 'Avenida del Avance, 34, Valencia', 'Produccion en cadena', 'Empresa N');
INSERT INTO FABRICA (nombre_fabrica, direccion, metodo_fabricacion, nombre_fabricante) 
VALUES ('Fabrica O', 'Calle Futuro, 56, Sevilla', 'Produccion personalizada', 'Empresa O');


-- SUSTANCIA ACTIVA 
INSERT INTO SUSTANCIA_ACTIVA (cod_desarrollo, nombre_comun, fecha_registro, nombre_quimico, numeros, formulas, pureza, perfil_analitico, funcion, efectos_org_nocivos,
ambito_utilizacion, modo_accion, metodos_precauciones, procedimientos_destruccion, medidas_emergencia, informacion_3_4, informacion_3_6, informacion_3_7,
evaluacion_ambiental, estudios_ecotoxicologicos, punto_fusion, punto_ebullicion, densidad_relativa, volatilidad, presion_vapor, aspecto, espectros,
extincion_molecular, solubilidad_agua, solubilidad_organicos, coeficiente_particion, inflamabilidad, punto_inflamacion, propiedades_explosivas,
tension_superficial, propiedades_comburentes, informacion_2_9, informacion_2_10)
VALUES (1000001, 'Sustancia A', TO_DATE('2022-01-01', 'YYYY-MM-DD'), 'QuimicoA', '123', 'C4H6O2', 'Alta', 'Perfil A', 'Funcion A', 'Efectos A',
'Ambito A', 'Modo A', 'Precauciones A', 'Destruccion A', 'Emergencia A', 'Info 3.4 A', 'Info 3.6 A', 'Info 3.7 A', 'Evaluacion A', 'Ecotoxicologia A',
100, 200, 1.05, 'Baja', 'Baja', 'Liquido', 'Espectros A', 'Extincion A', 'Solubilidad Agua A', 'Solubilidad Organicos A', 'Coeficiente A', 'No Inflamable',
75, 'No Explosivas', 'Alta', 'No Comburentes', 'Info 2.9 A', 'Info 2.10 A');

INSERT INTO SUSTANCIA_ACTIVA (cod_desarrollo, nombre_comun, fecha_registro, nombre_quimico, numeros, formulas, pureza, perfil_analitico, funcion, efectos_org_nocivos,
ambito_utilizacion, modo_accion, metodos_precauciones, procedimientos_destruccion, medidas_emergencia, informacion_3_4, informacion_3_6, informacion_3_7,
evaluacion_ambiental, estudios_ecotoxicologicos, punto_fusion, punto_ebullicion, densidad_relativa, volatilidad, presion_vapor, aspecto, espectros,
extincion_molecular, solubilidad_agua, solubilidad_organicos, coeficiente_particion, inflamabilidad, punto_inflamacion, propiedades_explosivas,
tension_superficial, propiedades_comburentes, informacion_2_9, informacion_2_10)
VALUES 
(1000002, 'Sustancia B', TO_DATE('2022-02-01', 'YYYY-MM-DD'), 'QuimicoB', '456', 'C6H8O3', 'Media', 'Perfil B', 'Funcion B', 'Efectos B',
'Ambito B', 'Modo B', 'Precauciones B', 'Destruccion B', 'Emergencia B', 'Info 3.4 B', 'Info 3.6 B', 'Info 3.7 B', 'Evaluacion B', 'Ecotoxicologia B',
150, 250, 1.20, 'Media', 'Media', 'Polvo', 'Espectros B', 'Extincion B', 'Solubilidad Agua B', 'Solubilidad Organicos B', 'Coeficiente B', 'Ligeramente Inflamable',
80, 'No Explosivas', 'Media', 'Comburentes', 'Info 2.9 B', 'Info 2.10 B');

INSERT INTO SUSTANCIA_ACTIVA (cod_desarrollo, nombre_comun, fecha_registro, nombre_quimico, numeros, formulas, pureza, perfil_analitico, funcion, efectos_org_nocivos,
ambito_utilizacion, modo_accion, metodos_precauciones, procedimientos_destruccion, medidas_emergencia, informacion_3_4, informacion_3_6, informacion_3_7,
evaluacion_ambiental, estudios_ecotoxicologicos, punto_fusion, punto_ebullicion, densidad_relativa, volatilidad, presion_vapor, aspecto, espectros,
extincion_molecular, solubilidad_agua, solubilidad_organicos, coeficiente_particion, inflamabilidad, punto_inflamacion, propiedades_explosivas,
tension_superficial, propiedades_comburentes, informacion_2_9, informacion_2_10)
VALUES (1000003, 'Sustancia C', TO_DATE('2022-03-01', 'YYYY-MM-DD'), 'QuimicoC', '789', 'C8H10O4', 'Alta', 'Perfil C', 'Funcion C', 'Efectos C',
'Ambito C', 'Modo C', 'Precauciones C', 'Destruccion C', 'Emergencia C', 'Info 3.4 C', 'Info 3.6 C', 'Info 3.7 C', 'Evaluacion C', 'Ecotoxicologia C',
120, 220, 1.15, 'Alta', 'Alta', 'Granulado', 'Espectros C', 'Extincion C', 'Solubilidad Agua C', 'Solubilidad Organicos C', 'Coeficiente C', 'No Inflamable',
90, 'No Explosivas', 'Alta', 'No Comburentes', 'Info 2.9 C', 'Info 2.10 C');

INSERT INTO SUSTANCIA_ACTIVA (cod_desarrollo, nombre_comun, fecha_registro, nombre_quimico, numeros, formulas, pureza, perfil_analitico, funcion, efectos_org_nocivos,
ambito_utilizacion, modo_accion, metodos_precauciones, procedimientos_destruccion, medidas_emergencia, informacion_3_4, informacion_3_6, informacion_3_7,
evaluacion_ambiental, estudios_ecotoxicologicos, punto_fusion, punto_ebullicion, densidad_relativa, volatilidad, presion_vapor, aspecto, espectros,
extincion_molecular, solubilidad_agua, solubilidad_organicos, coeficiente_particion, inflamabilidad, punto_inflamacion, propiedades_explosivas,
tension_superficial, propiedades_comburentes, informacion_2_9, informacion_2_10)
VALUES (1000004, 'Sustancia D', TO_DATE('2022-04-01', 'YYYY-MM-DD'), 'QuimicoD', '101', 'C5H12', 'Media', 'Perfil D', 'Funcion D', 'Efectos D',
'Ambito D', 'Modo D', 'Precauciones D', 'Destruccion D', 'Emergencia D', 'Info 3.4 D', 'Info 3.6 D', 'Info 3.7 D', 'Evaluacion D', 'Ecotoxicologia D',
130, 240, 1.18, 'Media', 'Media', 'Líquido', 'Espectros D', 'Extincion D', 'Solubilidad Agua D', 'Solubilidad Organicos D', 'Coeficiente D', 'Ligeramente Inflamable',
85, 'No Explosivas', 'Media', 'Comburentes', 'Info 2.9 D', 'Info 2.10 D');