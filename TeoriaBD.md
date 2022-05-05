# Bases de Datos

- **Base de Datos**: Colección o banco de información.
- **Información**: Conjunto de datos organizados y clasificados, sobre un tema en particular, que ayuda a la toma de decisiones.
- **Dato**: Unidad mínima de información.

## Modelo Entidad - Relación

- **Entidades**: Son objetos distinguibles del resto, pe en un sistema bancario las personas y las cuentas son entidades. Éstas pueden ser entes concretos, como una persona o un avión, o abstractas, como un préstamo o una reserva. Se representan por medio de un rectángulo.
- **Atributos**: Son propiedades de las entidades. Se representan mediante un círculo o elipse, cuando un atributo es identificativo de la entidad se subraya.
- **Relación**: Describe la dependencia entre entidades o permite la asociación de las mismas; pe tenemos 2 entidades CLIENTE y HABITACIÓN, una relación sería que el cliente 'Pepito' tiene 'ocupada' la habitación '519'. Se representan por medio de un verbo de acción dentro de un rombo que une entidades.

## Tipos de Relaciones:

- **1 a 1**: Un esposo(e) está casado(r) con una única esposa(e) y viceversa.
- **1 a M**: Una factura(e) se emite (r) a una persona(e) y sólo a una, pero una persona(e) puede tener(r) varias facturas(e) emitidas a su nombre. Todas las facturas(e) se emiten(r) a nombre de alguien(e).
- **M a M**: Un cliente(e) puede comprar(r) varios productos(e) y un producto(e) puede ser comprado(r) por varios clientes(e).

## Ejemplo en clase

Modelar las entidades que se ven involucradas en el funcionamiento de la app de _Instagram_

### Glosario

- **_PK_** - Primary Key
- **_FK_** - Foreign Key
- **_UQ_** - Unique
- **_CAT_** - Catalog
- **_1 - 1_** - One to One
- **_1 - M_** - One to Many
- **_M - M_** - Many to Many

## Modelo Entidad - Relación:

### Entidades:

- Posts
- Users
- Comments
- Hearts
- Follows

### Relaciones:

1. Los **Users** publican **Posts** (_1 - M_).
1. Los **Users** escriben **Comments** (_1 - M_).
1. Los **Posts** tienen **Comments** (_1 -M_).
1. Los **Users** otorgan **Hearts** (_1 - 1_).
1. Los **Posts** tienen **Hearts** (_1 - M_).
1. Los **Users** tienen **Follows** (_1 - M_).
1. Los **Users** siguen **Follows** (_1 - M_).

### Atributos:

#### Posts

- post_id (**_PK_**)
- post_date
- plot
- photo
- user (**_FK_**)

#### Users

- user (**_PK_**)
- user_date
- user_name
- email (**_UQ_**)
- password
- phone
- bio
- web
- avatar
- birthdate
- genre
- country (**_FK_** de **_CAT_**)

#### Comments

- comment_id (**_PK_**)
- comment_date
- comment
- post_id (**_FK_**)
- user (**_FK_**)

#### Hearts

- heart_id (**_PK_**)
- heart_date
- post_id (**_FK_**)
- user (**_FK_**)

#### Follows

- follow_id (**_PK_**)
- follow_date
- follow_user
- user (**_FK_**)
