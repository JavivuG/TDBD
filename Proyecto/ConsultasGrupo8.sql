-- Consultas Grupo 8
-- Archivo con la resolucion a las consultas del enunciado del hito 2
-- 1. Listado de personas de contacto de las solicitudes presentadas durante el mes de enero de 2023.
(SELECT c.nombre_contacto FROM contacto c JOIN solicita_sust_activa sol_sust ON c.nombre_solicitante = sol_sust.nombre_solicitante
WHERE (EXTRACT(MONTH FROM sol_sust.fecha) = 1 AND EXTRACT(YEAR FROM sol_sust.fecha) = 2023))
UNION
(SELECT c.nombre_contacto from contacto c JOIN solicita_microorganismo sol_micro ON c.nombre_solicitante = sol_micro.nombre_solicitante WHERE (EXTRACT(MONTH FROM sol_micro.fecha) = 1 AND EXTRACT(YEAR FROM sol_micro.fecha) = 2023));

-- 2. Cantidad total de sustancias activas registradas durante el mes de enero de 2023.
SELECT count(*)
FROM sustancia_activa s
WHERE EXTRACT(MONTH FROM fecha_registro) = 1 AND EXTRACT(YEAR FROM fecha_registro) = 2023;

-- 3. Datos de los componentes presentes en la sustancia activa “Parafina”.
SELECT c.peso_molecular, c.tipo, c.funcion, c.denominacion_quimica
FROM formado f
JOIN sustancia_activa s ON f.cod_desarrollo = s.cod_desarrollo
JOIN componente c on f.nombre_comun_componente = c.nombre_comun
WHERE s.nombre_comun = 'Parafina';

-- 4. Número de sustancias activas que cumplen con la función de acaricida
SELECT count(*)
FROM sustancia_activa s
WHERE s.funcion = 'Acaricida';

-- 5. Para cada función listada en el ítem 3.1 del Reglamento, cantidad total de sustancias activas registradas durante el año 2023.
SELECT s.funcion, count(*)
FROM sustancia_activa s
WHERE
s.funcion IN ('Acaricida', 'Bactericida', 'Fungicida', 'Herbicida', 'Insecticida', 'Molusquicida', 'Nematicida', 'Regulador del crecimiento de las plantas', 'Repelente', 'Rodenticida', 'Semioquímico', 'Topicida', 'Viricida') AND EXTRACT(YEAR FROM fecha_registro) = 2023
GROUP BY s.funcion;
