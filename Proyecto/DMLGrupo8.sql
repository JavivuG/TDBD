-- DML Grupo 8
-- Archivo con las consultas necesarias para responder tres transacciones del hito 1 

-- 1. Consultar el nombre de los solicitantes de la sustancias activas con funcion “Herbicida”
SELECT sol.nombre_solicitante
FROM SOLICITA_SUST_ACTIVA sol
JOIN SUSTANCIA_ACTIVA s ON s.cod_desarrollo = sol.cod_desarrollo
WHERE s.funcion LIKE '%Herbicida%';

-- 2. Consultar la solicitud de microorganismo más reciente registrada 
SELECT * 
FROM SOLICITA_MICROORGANISMO 
WHERE fecha = (SELECT MAX(fecha) FROM solicita_microorganismo);

-- 3. Consultar que microorganismo es producido por la mayor cantidad de productores
SELECT p.numero_entrada AS MICROORGANISMO, count(distinct(p.nombre_productor)) as Numero_productores 
FROM PRODUCE p 
GROUP BY p.numero_entrada 
ORDER BY Numero_productores DESC;

