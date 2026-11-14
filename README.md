# TDBD — Tecnología y Diseño de Bases de Datos

Base de datos en Oracle para registrar sustancias activas y microorganismos según un reglamento, desde el modelo Entidad/Relación hasta el esquema SQL, los datos de prueba, las consultas y los triggers.

> Asignatura **Tecnología y Diseño de Bases de Datos** · 3.º curso, 1.er cuatrimestre · Curso 2023-2024 · Grado en Ingeniería Informática, Universidad de Valladolid.

## Qué hace

- **Modelo E/R**: diseño conceptual a partir del [enunciado](Enunciados/practica-2324-enunciado.pdf) y del [reglamento](Enunciados/reglamento.pdf) con los datos del dominio.
- **Modelo relacional**: 16 tablas (solicitantes, contactos, fabricantes, componentes, sustancias activas, productores, instalaciones, microorganismos y las tablas que los relacionan), con el análisis de dependencias funcionales y de formas normales (FNBC) que recoge la presentación.
- **Restricciones de integridad**: claves primarias y ajenas, y `CHECK` sobre formatos (teléfono de 9 dígitos, fax de 10, código de desarrollo de 7), valores positivos y fechas mínimas.
- **Triggers PL/SQL**: uno valida que los efectos nocivos de una sustancia activa pertenecen al catálogo del reglamento; otro añade automáticamente la información obligatoria del ítem 3.6 cuando la sustancia tiene alguno de esos efectos.
- **Datos y consultas**: script de inserción con 168 sentencias `INSERT` y las consultas de las transacciones del Hito 1 y del Hito 2.

### Diagrama Entidad/Relación

![Diagrama Entidad/Relación](https://github.com/user-attachments/assets/38710ea7-4046-43a3-a7d8-6dab98c72741)

El diagrama fuente está en [`diagramaGrupo8.lun`](diagramaGrupo8.lun), en formato de DB-MAIN.

## Tecnologías

- Oracle SQL (DDL y DML) y PL/SQL (triggers)
- DB-MAIN para el modelado E/R

## Aspectos técnicos destacados

- **Reglas del reglamento en la base de datos**: el catálogo de efectos nocivos y la información asociada se aplican con triggers `BEFORE` a nivel de fila. Así se rechazan los datos inválidos con `RAISE_APPLICATION_ERROR` en lugar de confiar en la aplicación.
- **Normalización**: las dependencias funcionales y las claves candidatas de cada relación se analizan para comprobar que el esquema está en FNBC.
- **Scripts que se pueden volver a ejecutar**: cada `CREATE TABLE` va precedido de `DROP TABLE ... CASCADE CONSTRAINTS`.
- **Consultas con agregación y conjuntos**: `UNION`, subconsultas, `GROUP BY`, `COUNT(DISTINCT ...)` y filtros por fecha con `EXTRACT`.

## Estructura del repositorio

```text
TDBD/
├── Enunciados/
│   ├── practica-2324-enunciado.pdf   # Enunciado del proyecto
│   └── reglamento.pdf                 # Datos del dominio
├── Proyecto/
│   ├── DDLGrupo8.sql                  # Tablas, restricciones y triggers
│   ├── DMLInsercionGrupo8.sql         # Datos de prueba
│   ├── DMLGrupo8.sql                  # Consultas de las transacciones (Hito 1)
│   └── ConsultasGrupo8.sql            # Consultas del enunciado (Hito 2)
├── diagramaGrupo8.lun                 # Diagrama E/R (DB-MAIN)
├── informeGrupo8.pdf                  # Informe
└── presentacionGrupo8.pptx            # Presentación
```

## Requisitos

- Una base de datos Oracle y un cliente SQL (por ejemplo, SQL*Plus o SQL Developer)
- DB-MAIN, solo para abrir el diagrama fuente

## Cómo reproducir

Ejecuta los scripts en este orden desde un cliente Oracle:

```sql
@Proyecto/DDLGrupo8.sql            -- crea tablas, restricciones y triggers
@Proyecto/DMLInsercionGrupo8.sql   -- inserta los datos de prueba
@Proyecto/DMLGrupo8.sql            -- consultas del Hito 1
@Proyecto/ConsultasGrupo8.sql      -- consultas del Hito 2
```

En un esquema vacío, los `DROP TABLE` iniciales dan errores que no afectan al resultado. Esta secuencia no se ha ejecutado contra una instancia Oracle para preparar este README.

## Autoría

Proyecto en grupo (Grupo 8). En el historial del repositorio hay contribuciones de Javier García González y de 0xBA55, y los integrantes figuran en la [presentación](presentacionGrupo8.pptx).

---

Forma parte de [UVa-Projects](https://github.com/JavivuG/UVa-Projects).
