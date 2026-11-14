<div align="center">

# Base de datos regulatoria en Oracle

**Del enunciado al esquema: modelo E/R, esquema relacional normalizado en FNBC, reglas del reglamento aplicadas con triggers PL/SQL, datos de prueba y consultas.**

![Oracle](https://img.shields.io/badge/Oracle-F80000?style=for-the-badge&logo=oracle&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-336791?style=for-the-badge)
![PL/SQL](https://img.shields.io/badge/PL%2FSQL-C74634?style=for-the-badge)
![DB-MAIN](https://img.shields.io/badge/DB--MAIN-555555?style=for-the-badge)

<sub>Tecnología y Diseño de Bases de Datos · Grado en Ingeniería Informática · Universidad de Valladolid · Curso 2023-2024</sub>

</div>

![Diagrama Entidad/Relación](https://github.com/user-attachments/assets/38710ea7-4046-43a3-a7d8-6dab98c72741)

<p align="center"><sub>Diagrama Entidad/Relación. El fuente está en <a href="diagramaGrupo8.lun"><code>diagramaGrupo8.lun</code></a> (DB-MAIN).</sub></p>

## En pocas palabras

- **Reto**: modelar el registro de sustancias activas y microorganismos que exige un [reglamento](Enunciados/reglamento.pdf), con sus solicitantes, fabricantes, productores e instalaciones, y hacer que la base de datos imponga las reglas del reglamento.
- **Solución**: base de datos Oracle completa hecha en grupo (Grupo 8): diseño conceptual E/R, 16 tablas con restricciones de integridad, triggers PL/SQL, script de datos de prueba y consultas de las transacciones del enunciado.
- **Demuestra**: modelado de datos, normalización, integridad declarativa y procedimental, y SQL con agregación, subconsultas y operaciones de conjuntos.

## Lo más destacado

- **Reglas de negocio en la base de datos**: triggers `BEFORE` a nivel de fila validan que los efectos nocivos de una sustancia pertenecen al catálogo del reglamento (con `RAISE_APPLICATION_ERROR`) y añaden automáticamente la información obligatoria del ítem 3.6 cuando corresponde.
- **Esquema normalizado**: análisis de dependencias funcionales y claves candidatas de cada relación para comprobar que el esquema está en FNBC.
- **Integridad declarativa**: claves primarias y ajenas, y `CHECK` sobre formatos (teléfono de 9 dígitos, fax de 10, código de desarrollo de 7), valores positivos y fechas mínimas.
- **Datos y consultas**: 168 sentencias `INSERT` de prueba y consultas con `UNION`, subconsultas, `GROUP BY`, `COUNT(DISTINCT ...)` y filtros por fecha con `EXTRACT`.
- **Scripts reejecutables**: cada `CREATE TABLE` va precedido de `DROP TABLE ... CASCADE CONSTRAINTS`.

## Competencias

| Área | Qué se aplicó |
|------|---------------|
| Modelado | Diagrama E/R en DB-MAIN a partir de requisitos de un reglamento |
| Diseño relacional | Paso a tablas, dependencias funcionales, FNBC |
| SQL | DDL con restricciones, DML de carga y consultas complejas |
| PL/SQL | Triggers de validación y de inserción automática |
| Trabajo en equipo | Proyecto en grupo con informe y presentación |

## Arquitectura de la base de datos

16 tablas: solicitantes, contactos, fabricantes, componentes, sustancias activas, productores, instalaciones, microorganismos y las tablas que los relacionan. El diseño parte del [enunciado](Enunciados/practica-2324-enunciado.pdf) y del [reglamento](Enunciados/reglamento.pdf), y el análisis de normalización está en la presentación.

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

## Cómo ejecutarlo

Ejecuta los scripts en este orden desde un cliente Oracle:

```sql
@Proyecto/DDLGrupo8.sql            -- crea tablas, restricciones y triggers
@Proyecto/DMLInsercionGrupo8.sql   -- inserta los datos de prueba
@Proyecto/DMLGrupo8.sql            -- consultas del Hito 1
@Proyecto/ConsultasGrupo8.sql      -- consultas del Hito 2
```

## Estado y limitaciones

- En un esquema vacío, los `DROP TABLE` iniciales dan errores que no afectan al resultado.
- Esta secuencia no se ha ejecutado contra una instancia Oracle al preparar este README.

## Autoría

Proyecto en grupo (Grupo 8). En el historial del repositorio hay contribuciones de Javier García González y de 0xBA55, y los integrantes figuran en la [presentación](presentacionGrupo8.pptx).

---

<div align="center"><sub>Parte de <a href="https://github.com/JavivuG/UVa-Projects">UVa-Projects</a> · Javier García González</sub></div>
