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

1. Posts
1. Users
1. Comments
1. Hearts
1. Follows
1. Countries

### Relaciones:

1. Los **Users** publican **Posts** (_1 - M_).
1. Los **Users** escriben **Comments** (_1 - M_).
1. Los **Posts** tienen **Comments** (_1 -M_).
1. Los **Users** otorgan **Hearts** (_1 - 1_).
1. Los **Posts** tienen **Hearts** (_1 - M_).
1. Los **Users** tienen **Follows** (_1 - M_).
1. Los **Users** siguen **Follows** (_1 - M_).
1. Los **Users** tienen un **Countries** (_1 - 1_).

### Atributos:

#### Posts

- post_id (**PK**)
- post_date
- plot
- photo
- user (**FK**)

#### Users

- user (**PK**)
- user_date
- user_name
- email (**UQ**)
- password
- phone
- bio
- web
- avatar
- birthdate
- genre
- country (**FK** de **CAT**)

#### Comments

- comment_id (**PK**)
- comment_date
- comment
- post_id (**FK**)
- user (**FK**)

#### Hearts

- heart_id (**PK**)
- heart_date
- post_id (**FK**)
- user (**FK**)

#### Follows

- follow_id (**PK**)
- follow_date
- follow_user
- user (**FK**)

#### Countries Catalog

- country_id (**PK**)
- country_name

##### Countries Values

- Afganistán
- Albania
- Alemania
- Andorra
- Angola
- Antigua y Barbuda
- Arabia Saudita
- Argelia
- Argentina
- Armenia
- Australia
- Austria
- Azerbaiyán
- Bahamas
- Bangladés
- Barbados
- Baréin
- Bélgica
- Belice
- Benín
- Bielorrusia
- Birmania
- Bolivia
- Bosnia y Herzegovina
- Botsuana
- Brasil
- Brunéi
- Bulgaria
- Burkina Faso
- Burundi
- Bután
- Cabo Verde
- Camboya
- Camerún
- Canadá
- Catar
- Chad
- Chile
- China
- Chipre
- Ciudad del Vaticano
- Colombia
- Comoras
- Corea del Norte
- Corea del Sur
- Costa de Marfil
- Costa Rica
- Croacia
- Cuba
- Dinamarca
- Dominica
- Ecuador
- Egipto
- El Salvador
- Emiratos Árabes Unidos
- Eritrea
- Eslovaquia
- Eslovenia
- España
- Estados Unidos
- Estonia
- Etiopía
- Filipinas
- Finlandia
- Fiyi
- Francia
- Gabón
- Gambia
- Georgia
- Ghana
- Granada
- Grecia
- Guatemala
- Guyana
- Guinea
- Guinea ecuatorial
- Guinea-Bisáu
- Haití
- Honduras
- Hungría
- India
- Indonesia
- Irak
- Irán
- Irlanda
- Islandia
- Islas Marshall
- Islas Salomón
- Israel
- Italia
- Jamaica
- Japón
- Jordania
- Kazajistán
- Kenia
- Kirguistán
- Kiribati
- Kuwait
- Laos
- Lesoto
- Letonia
- Líbano
- Liberia
- Libia
- Liechtenstein
- Lituania
- Luxemburgo
- Madagascar
- Malasia
- Malaui
- Maldivas
- Malí
- Malta
- Marruecos
- Mauricio
- Mauritania
- México
- Micronesia
- Moldavia
- Mónaco
- Mongolia
- Montenegro
- Mozambique
- Namibia
- Nauru
- Nepal
- Nicaragua
- Níger
- Nigeria
- Noruega
- Nueva Zelanda
- Omán
- Países Bajos
- Pakistán
- Palaos
- Panamá
- Papúa Nueva Guinea
- Paraguay
- Perú
- Polonia
- Portugal
- Reino Unido
- República Centroafricana
- República Checa
- República de Macedonia
- República del Congo
- República Democrática del Congo
- República Dominicana
- República Sudafricana
- Ruanda
- Rumanía
- Rusia
- Samoa
- San Cristóbal y Nieves
- San Marino
- San Vicente y las Granadinas
- Santa Lucía
- Santo Tomé y Príncipe
- Senegal
- Serbia
- Seychelles
- Sierra Leona
- Singapur
- Siria
- Somalia
- Sri Lanka
- Suazilandia
- Sudán
- Sudán del Sur
- Suecia
- Suiza
- Surinam
- Tailandia
- Tanzania
- Tayikistán
- Timor Oriental
- Togo
- Tonga
- Trinidad y Tobago
- Túnez
- Turkmenistán
- Turquía
- Tuvalu
- Ucrania
- Uganda
- Uruguay
- Uzbekistán
- Vanuatu
- Venezuela
- Vietnam
- Yemen
- Yibuti
- Zambia
- Zimbabue
