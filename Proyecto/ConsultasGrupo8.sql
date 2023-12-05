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
    :NEW.informacion_3_6 := '1.El proveedor proporcionará una ficha de datos de seguridad para sustancias o preparados peligrosos o incluidos en una lista específica.2.Los agentes de la cadena de suministro deben garantizar coherencia entre la ficha de datos y la valoración de seguridad química.3.Se proporcionará la ficha para preparados no peligrosos, pero con sustancias peligrosas en concentraciones específicas.4.No es obligatorio proporcionar la ficha para preparados peligrosos ofrecidos al público, salvo solicitud de un usuario intermedio o distribuidor.5.La ficha, en un idioma oficial, incluirá información sobre identificación, peligros, composición, primeros auxilios, medidas contra incendios, almacenamiento, etc.6.Incluirá información sobre exposición, propiedades físicas y químicas, estabilidad, reactividad, toxicología, ecología, eliminación, transporte, regulación y otra información.7.Los agentes de la cadena de suministro adjuntarán escenarios de exposición relevantes al elaborar informes sobre seguridad química.8.La ficha se facilitará gratuitamente y deberá actualizarse ante nueva información relevante para la gestión de riesgos o peligros, autorización o restricción.9.Los proveedores deberán actualizarla ante nueva información relevante para la gestión de riesgos, o de nueva información sobre peligros; cuando se haya concedido o denegado una autorización; cuando se imponga una restricción.';
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
