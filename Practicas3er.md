# Prácticas 3er Parcial

## Secciones

- [Calificaciones](#calificaciones)
- [Prácticas](#prácticas)
- [Comandos](#comandos)

## Calificaciones

| Alumno                                                                                           | P1  | P2  | P3  | P4  | P5  |
| ------------------------------------------------------------------------------------------------ | --- | --- | --- | --- | --- |
| [Calderón Ríos Luis Ricardo](https://github.com/Riku935/calderon-ricardo-practicas-3)            | 10  | 10  | 10  | 10  |     |
| [Cruz Domínguez Aldo Axel](https://github.com/Alzound/CruzDominguez-AldoAxel-Practica3)          | 10  | 10  | 10  | 10  |     |
| [Escamilla Juárez Andrea](https://github.com/AndreaEJ22/escamilla-andrea-practicas-3)            | 10  | 10  | 10  | 10  |     |
| [Estrada Ascencio Juan Raúl](https://github.com/JuanEstrada01/Estrada-Juan-practicas-3-)         | 10  | 10  | 10  | ❌  |     |
| [Flores Armas Carlos Alam](https://github.com/NegligentWhale7/Armas-Alam-practicas-3)            | 10  | 10  | 10  | 10  |     |
| [Gutiérrez Salinas Tobías Armando](https://github.com/Tobias66Jags/gutierrez-tobias-practicas-3) | 10  | 10  | 10  | 10  | 10  |
| [Montecino Sainz Néstor Camilo](https://github.com/LDom890/montecino-nestor-practicas-3)         | 10  | 10  | 10  | ❌  |     |
| [Morales Cabañas Pedro](https://github.com/MasterPedro1/morales-pedro-practica-3)                | 10  | 10  | 10  | ❌  |     |
| [Pacheco Díaz De León Carla Raquel](https://github.com/QueenOfHell666/Pacheco-Carla-practicas-3) | 10  | 8   | 8   | 10  |     |
| [Piña Anzures Victor](https://github.com/AmerikeVPA/pi-a-anzures-victor-practicas-3)             | 10  | 10  | 8   | ❌  |     |

[🔼Regresar](#secciones)

## Prácticas

### Práctica 1

En una hoja de papel describe los comandos de los siguientes flujos de git:

1. Inicializar por primera vez un repositorio en local y remoto.
1. Flujo básico de agregar un cambio a la rama principal de tu repositorio.

Se entrega en la clase del **19 de abril de 2022**.

### Práctica 2

Crea un repositorio en tu cuenta de _GitHub_ que tenga el siguiente formato de nombre:

**apellido-nombre-practicas-3** por ejemplo **miranda-jonathan-practicas-3**

En dicho repositorio agrega un archivo **README.md** y un archivo **.gitignore**

En el archivo **README.md** agrega como contenido tu nombre completo, correo electrónico y enlazarás una foto tuya.

Manda el link de tu repositorio al correo **jmiranda@amerike.edu.mx**

Se entrega en la clase del **21 de abril de 2022**.

### Práctica 3

En el archivo **README.md** debajo de tu informcación personal agrega a manera de acordeón para que siempre lo tengas a la mano el conjunto de comandos que necesitarías para:

1. Crear e inicializar por primera vez un repositorio de _git_ y vincularlo a su repositrio remoto en _GitHub_.
1. El flujo básico de agregar un cambio a la rama principal de tu repositorio.

Recuerda usar el formato para escribir código de _Markdown_.

Se entrega en la clase del **21 de abril de 2022**.

### Práctica 4

1. Crea un sitio con _Astro_.
1. En la página de inicio del sitio agrega tu información personal (la que tienes en el **README.md** del repositorio de entregas del tercer parcial).
1. Crea un repositorio en _GitHub_ para tu sitio _Astro_.
1. Despliega tu sitio en la nube de _Netlify_.
1. Cuando termines, actualiza el **README.md** de tus entregas agregando:
   - El enlace del repositorio de tu sitio _Astro_ en _Github_.
   - El enlace de tu sitio _Astro_ desplegado en _Netlify_.

Se entrega en la clase del **28 de abril de 2022**.

### Práctica 5

1. Replica lo que hiciste en la práctica 4, pero en la plataforma de [Vercel](https://vercel.com/).
1. Cuando termines, actualiza el **README.md** de tus entregas agregando:
   - El enlace de tu sitio _Astro_ desplegado en _Vercel_.

Se entrega en la clase del **03 de mayo de 2022**.

[🔼Regresar](#secciones)

### Práctica 6, 7 y 8

1. Crea un archivo _Markdown_ en tu repositorio de entregas y llénalo con las entidades, relaciones y atributos de tu proyecto de base de datos.
1. Esta práctica vale por 3: entidades, atributos y relaciones.
1. Cuando termines, actualiza el **README.md** de tus entregas agregando el link del documento.

Se entrega a más tardar en la clase del **12 de mayo de 2022**.

[🔼Regresar](#secciones)

## Comandos

### Git

#### Creación de carpeta local

```bash
mkdir carpeta
cd carpeta
touch README.md
touch .gitignore
code .
```

#### Inicialización de repositorio

```bash
git init
git config --local user.email tu@correo.com
git add .
git commit -m "Mensaje del cambio"
git branch -M main
git remote add origin https://github.com/usuario/repositorio.git
git push -u origin main
```

#### Flujo básico de un cambio

```bash
git add .
git commit -m "Mensaje del cambio"
git push
```

#### Comandos para revisar status e historial de cambios

```bash
git status
git log
git log --oneline
git log --oneline --graph
```

#### Comandos para descargar cambios del remoto

```bash
git pull
```

### Astro

[Sitio Oficial](https://astro.build/)

#### Instalación

```bash
mkdir carpeta-proyecto
cd carpeta-proyecto
npm create astro@latest
# en el asistente de instalación escribir:
#   y
#   .
#   elegir un template
npm install
```

#### Comenzar la aplicación en local

```bash
npm start
```

#### Construir el sitio para producción

```bash
npm run build
```

[🔼Regresar](#secciones)
