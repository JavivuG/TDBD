-- Consultas
-- 1. Listado de personas de contacto de las solicitudes presentadas durante el mes de enero de 2023.
SELECT c.nombre_contacto
FROM contacto c
JOIN solicita_sust_activa sol_sust ON c.nombre_solicitante = sol_sust.nombre_solicitante
JOIN solicita_microorganismo sol_micro ON c.nombre_solicitante = sol_micro.nombre_solicitante
WHERE (EXTRACT(MONTH FROM sol_sust.fecha) = 1 AND EXTRACT(YEAR FROM sol_sust.fecha) = 2023)
OR (EXTRACT(MONTH FROM sol_micro.fecha) = 1 AND EXTRACT(YEAR FROM sol_micro.fecha) = 2023);

-- 2. Cantidad total de sustancias activas registradas durante el mes de enero de 2023.
SELECT count(*)
FROM sustancia_activa s
WHERE EXTRACT(MONTH FROM fecha_registro) = 1 AND EXTRACT(YEAR FROM fecha_registro) = 2023;

-- 3. Datos de los componentes presentes en la sustancia activa “Parafina”.
SELECT c.peso_molecular, c.tipo, c.funcion, c.denominacion_quimica
FROM componente c
JOIN sustancia_activa s ON c.nombre_comun = s.nombre_comun
WHERE s.nombre_comun = 'Parafina';

-- 4. Número de sustancias activas que cumplen con la función de acaricida
SELECT count(*)
FROM sustancia_activa s
WHERE s.funcion = 'acaricida';
-- 5. Para cada función listada en el ítem 3.1 del Reglamento, cantidad total de sustancias activas registradas durante el año 2023. 


-- 6. Implementar la restricción que garantiza que si una sustancia tiene alguno de los efectos nocivos indicados en el ítem 3.2, también estará en la base de datos la información relativa a los métodos y protecciones recomendadas que requiere el ítem 3.6


-- 7. Implementar la restricción que garantiza que todos los efectos nocivos que se asocian a una sustancia activa se corresponden con alguno de los recogidos en el catálogo del ítem 3.2.1.
