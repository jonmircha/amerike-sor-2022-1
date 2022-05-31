# Bases de Datos

1. [Básicos](#básicos).
1. [Sentencias de Objetos](#sentencias-de-objetos).
1. [Sentencias de Datos](#sentencias-de-datos).
1. [SQL Avanzado](#sql-avanzado).

## Básicos

### Conceptos básicos

- Una base de datos tiene tablas.
- Una tabla tiene campos (columnas) y registros (filas).
- El conjunto de campos genera un registro.
- Campo: un dato que por sí sólo no dice mucho.
- Registro: conjunto de campos que genera información.

### Sintaxis SQL

SQL significa _**Structured Query Language**_.

SQL, NO distingue entre MÁYUSCULAS y minúsculas pero:

- Comandos y palabras reservadas de SQL van en MÁYUSCULAS.
- Nombres de objetos y datos van en minúsculas con _snake_case_.
- Para strings usar comillas simples ( `''` ).
- Todas las sentencias terminan con punto y coma ( `;` ).
- [Tipos de Datos (MySQL Doc)](https://dev.mysql.com/doc/refman/5.7/en/data-types.html).
- [Tipos de Datos (MySQL con clase)](http://mysql.conclase.net/curso/index.php?cap=005#).

### Tipos de Sentencias SQL

- De Objetos.
- De Datos.

### Concepto CRUD

- Create.
- Read.
- Update.
- Delete.

[🔙 Regresar](#bases-de-datos)

## Sentencias de Objetos

Objetos básicos en SQL:

- Bases de Datos.
- Tablas.
- [Usuarios (y sus Privilegios)](http://rm-rf.es/usuario-mysql-como-crear-borrar-y-asignar-privilegios/).

### Bases de Datos

```sql
CREATE DATABASE a_data_base;
DROP DATABASE a_data_base;
SHOW DATABASES;
USE a_data_base;
```

### Tablas

```sql
CREATE TABLE a_table();
DROP TABLE a_table;
ALTER TABLE a_table [ADD COLUMN || DROP COLUMN || MODIFY];
DESCRIBE a_table;
```

- Motores de Tablas:
  - [MyISAM vs InnoDB](http://www.webreunidos.es/blog/myisam-vs-innodb/).
  - [¿Qué motor elegir?](http://blog.arsys.es/myisam-o-innodb-elige-tu-motor-de-almacenamiento-mysql/)
  - [Diferencias entre motores](http://blog.openalfa.com/diferencias-entre-innodb-y-myisam-en-mysql).
- [Tipos de Datos en MySQL](http://mysql.conclase.net/curso/index.php?cap=005#).
- [Restricciones](http://blog.openalfa.com/como-trabajar-con-restricciones-de-clave-externa-en-mysql) de tipo ON DELETE y ON UPDATE:
  - RESTRICT.
  - CASCADE.
  - SET NULL.
  - NO ACTION.

### Usuarios

```sql
CREATE USER my_user IDENTIFIED BY 'my_password';
SELECT PASSWORD('my_password'); //contraseña en hash
CREATE USER my_user IDENTIFIED BY PASSWORD 'hash_value';
DROP USER my_user;
```

### Privilegios

```sql
GRANT ALL PRIVILEGES ON data_base.table TO 'my_user'@'my_host' -> IDENTIFIED BY 'my_password' WITH GRANT OPTION;
SHOW GRANTS for 'my_user'@'my_host';
REVOKE [PRIVILEGES], GRANT OPTION FROM 'my_user'@'my_host';
FLUSH PRIVILEGES;
```

[🔙 Regresar](#bases-de-datos)

## Sentencias de Datos

- Create - **`INSERT`**.
- Read - **`SELECT`**.
- Update - **`UPDATE`**.
- Delete - **`DELETE`**.

### CREATE

Insertar un registro:

```sql
INSERT INTO table (field_1, field_2, ..., field_n)
  VALUES (value_1, value2, ..., value_n);

INSERT INTO table
  SET field_1 = 'value_1', field_2 = 'value_2', ..., field_n = value_n;
```

Insertar varios registros:

```sql
INSERT INTO table (field_1, field_2, ..., field_n) VALUES
  (value_1, value2, ..., value_n),
  (value_1, value2, ..., value_n),
  ...,
  (value_1, value2, ..., value_n);
```

### READ

Leer todos los campos de la tabla:

```sql
SELECT * FROM table;
```

Leer algunos campos de la tabla:

```sql
SELECT field_1, field_2, field_n FROM table;
```

Saber cuantos registros tiene mi tabla:

```sql
SELECT COUNT(*) FROM table;
```

Leer un registro en particular buscando el valor de un campo:

```sql
SELECT * FROM table WHERE field_1 = 'value_1';
```

Leer registros en particular buscando diferentes valores en un campo:

```sql
SELECT * FROM table WHERE field_1 IN ('value_1', 'value_2', 'value_n');
```

Leer un registro en particular buscando el valor similar en un campo:

```sql
SELECT * FROM table WHERE field_1 LIKE '%value_1';
SELECT * FROM table WHERE field_1 LIKE 'value_1%';
SELECT * FROM table WHERE field_1 LIKE '%value_1%';
```

Leer un registro en particular buscando el valor con operadores lógicos:

```sql
SELECT * FROM table WHERE field_1 = 'value_1' AND field_2 = 'value_2';
SELECT * FROM table WHERE field_1 = 'value_1' OR field_2 = 'value_2';
SELECT * FROM table WHERE NOT field_1 = 'value_1';
SELECT * FROM table WHERE field_1 != 'value_1';
```

### UPDATE

Siempre agregar la clausula **_WHERE_** para evitar actualizar toda la tabla:

```sql
UPDATE table
  SET field_1 = 'value_1', field_2 = 'value_2', ..., field_n = value_n
  WHERE field = value;
```

### DELETE

Siempre agregar la clausula **_WHERE_** para evitar eliminar toda la tabla:

**[NO TE OLVIDES DEL WHERE EN EL DELETE FROM](https://www.youtube.com/watch?v=i_cVJgIz_Cs)**

```sql
DELETE FROM table WHERE field = value;
```

[🔙 Regresar](#bases-de-datos)

## SQL Avanzado

### [Funciones de Encriptación](http://dev.mysql.com/doc/refman/5.7/en/encryption-functions.html)

- ENCRYPT.
- PASSWORD.
- MD5.
- SHA.
- SHA1.
- SHA2.
- etc.

### [Consultas FULLTEXT](http://dev.mysql.com/doc/internals/en/full-text-search.html)

Consulta que busca en varios campos de una tabla, se debe definir el campo FULLTEXT en la estructura de la tabla:

```sql
CREATE TABLE a_table(
  table_id INTEGER UNSIGNED PRIMARY KEY,
  field_1 VARCHAR(80),
  field_2 VARCHAR(80),
  field_3 VARCHAR(80),
  field_4 VARCHAR(80),
  FULLTEXT INDEX a_search(field_1, field_2, field_3, field_4)
);

SELECT * FROM table
  WHERE MATCH(field_1, field_2, field_3, field_4)
  AGAINST('a_search' IN BOOLEAN MODE);
```

### [Función REPLACE](http://dev.mysql.com/doc/refman/5.7/en/replace.html) ( INSERT + ¿UPDATE? )

- Si el valor del campo clave y/o único del registro a insertar existe, REPLACE lo elimina y agrega el nuevo registro (ejecuta 2 consultas: 1 DELETE y 1 INSERT).
- Si el valor del campo clave y/o único del registro a insertar NO existe, REPLACE agrega el nuevo registro (ejecuta 1 consulta: 1 INSERT).

```sql
REPLACE INTO table (field_1, field_2, ..., field_n)
  VALUES (value_1, value2, ..., value_n);

REPLACE INTO table
  SET field_1 = 'value_1', field_2 = 'value_2', ..., field_n = value_n;
```

### [Transacciones SQL](https://styde.net/transacciones-de-bases-de-datos-mysql-en-php/)

Cuando varias sentencias se tienen que ejecutar al mismo tiempo como si fueran una sola, en caso de que exista un error los cambios efectuados en la base de datos se cancelan:

```sql
START TRANSACTION;

  INSERT INTO table_1 (field_1, field_2, field_3)
    VALUES ('value_1', 'value_2', 'value_3');

  INSERT INTO table_2 (field_1, field_2, field_3)
    VALUES ('value_1', 'value_2', 'value_3');

  INSERT INTO table_3 (field_1, field_2, field_3)
    VALUES ('value_1', 'value_2', 'value_3');

COMMIT; /* ROLLBACK; */
```

### Consultas múltiples

Datos de 2 o más tablas:

- [Definición de JOIN](https://es.wikipedia.org/wiki/Join).
- [JOINS de manera gráfica](http://www.genbetadev.com/bases-de-datos/explicacion-grafica-de-los-join-en-sql-y-sus-resultados).

```sql
SELECT * FROM table_1 AS t1
  INNER JOIN table_2 AS t2;

SELECT * FROM table_1 AS t1
  INNER JOIN table_2 AS t2
  ON t1.a_field = t2.a_field;

SELECT t1.field_1, t1.field_2, t1.field_3, t2.field_1, t2.field_5
  FROM table_1 AS t1
  INNER JOIN table_2 AS t2
  ON t1.field_1 = t2.field_5
  WHERE t1.field_1 = 'a_value'
  ORDER BY t1.field_3 DESC;

/* Con FULLTEXT */
SELECT t1.field_1, t1.field_2, t2.field_1, t2.field_4
  FROM table_1 AS t1
  INNER JOIN table_2 AS t2
  ON t1.field_1 = t2.field_4
  WHERE MATCH(t1.field_1, t1.field_2, t2.field_1, t2.field_4)
  AGAINST('a_search' IN BOOLEAN MODE);
```

### Subconsultas

Una consulta dentro de otra:

```sql
SELECT t1.field_1, t1.field_2, (
    SELECT COUNT(*)
    FROM table_2 AS t2
    WHERE t2.field_1 = t1.field_1
  ) AS subquery_field
  FROM table_1 AS t1;

SELECT t1.field_1, t1.field_2, t1.field_3, (
    SELECT field_1
    FROM table_2 AS t2
    WHERE t2.field_1 = t1.field_1
  ) AS subquery_field
  FROM table_1 AS t1;
```

### [Función GROUP_CONCAT](http://otroblogmas.com/funcion-group_concat-de-mysql/)

Sirve para concatenar con un separador, todos los registros afectados por un GROUP BY en un solo campo de salida.

### [Procedimientos almacenados](https://www.codejobs.biz/es/blog/2014/07/09/como-hacer-un-procedimiento-almacenado-en-mysql-sin-morir-en-el-intento)

Son rutinas (funciones) programadas que existen en la base de datos y que afectan su lógica de negocio:

```sql
DROP PROCEDURE IF EXISTS a_procedure;

DELIMITER $$

CREATE PROCEDURE a_procedure(
  IN _data_1 CHAR(9),
  IN _data_2 INT
)

BEGIN

  START TRANSACTION;

    DELETE FROM a_table_1 WHERE a_field = _data_1;

    DELETE FROM a_table_2 WHERE a_field = _data_2;

  COMMIT;

END $$

DELIMITER ;
```

### Guardar consultas en un archivo de texto

```sql
SELECT * FROM a_table
  WHERE a_field = a_value
  INTO OUTFILE 'C:/path/to/file.txt'
  FIELDS TERMINATED BY ','
  OPTIONALLY ENCLOSED BY ''
  LINES TERMINATED BY '\n';
```

[🔙 Regresar](#bases-de-datos)
