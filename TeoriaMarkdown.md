# Teoría _Markdown_

_Markdown_ es un lenguaje de marcado que facilita la aplicación de formato a un text empleando una serie de caracteres de una forma especial.

En principio, fue pensdo para elaborar textos cuyo destino fuera la _web_ y que fueran más sencillos de escribir que el tradicional _HTML_. Y si bien ese suele ser su mejor uso, también se ha convertido en un formato estándar para crear documentación.

## Indice

- [Sintaxis](#sintaxis)
    - [Enfásis](#enfasis)


## Sintaxis

La sintaxis es muy sencilla y cuenta con varias opcionesdiferentes para algunos de sus elementos. Básicamente se trata de añadir ciertos caracteres al inicio o final de línea o elemento al que vamos a aplicar formato.

[👈🏻 Regresar](#indice)

### Enfasis

Para aplicar *cursiva* y **negritas** se usa la siguiente sintaxis:

```md
*cursiva*
_cursiva_

**negrita**
__negrita__

***cursiva y negrita***
___cursiva y negrita___
```

*cursiva*

_cursiva_

**negrita**

__negrita__

***cursiva y negrita***

___cursiva y negrita___


### Encabezados

En _HTML_ existen 6 niveles de encabezados, que nos permite dar jerarquía a los títulos de nuestro contenido. En _Markdown_ también tenemos 6 niveles de encabezados:

```md
# Encabezado de nivel 1
## Encabezado de nivel 2
### Encabezado de nivel 3
#### Encabezado de nivel 4
##### Encabezado de nivel 5
###### Encabezado de nivel 6
```

# Encabezado de nivel 1
## Encabezado de nivel 2
### Encabezado de nivel 3
#### Encabezado de nivel 4
##### Encabezado de nivel 5
###### Encabezado de nivel 6

### Listas

Podemos utilizar listas ordenadas y desordenadas en _Markdown_.

#### Listas Ordenadas

```md
1. Primavera
1. Verano
1. Otoño
1. Invierno
```

1. Primavera
1. Verano
1. Otoño
1. Invierno

#### Listas Desordenadas

```
- Primavera
- Verano
- Otoño
- Invierno
```

- Primavera
- Verano
- Otoño
- Invierno

#### Sublistas

Si quieres generar sublistas, usa la **indentación** para controlar los niveles de tus listas.

```
- Primavera
    - Abril
    - Mayo
    - Junio
- Verano
    - Julio
    - Agosto
    - Septiembre
- Otoño
    1. Octubre
    1. Noviembre
        - Dia de Muertos
        - _Black Friday_
    1. Diciembre
- Invierno
    1. Enero
    1. Febrero
    1. Marzo
```

- Primavera
    - Abril
    - Mayo
    - Junio
- Verano
    - Julio
    - Agosto
    - Septiembre
- Otoño
    1. Octubre
    1. Noviembre
        - Dia de Muertos
        - _Black Friday_
    1. Diciembre
- Invierno
    1. Enero
    1. Febrero
    1. Marzo

### Imagenes

```
![This is JavaScript](https://jonmircha.com/img/blog/this-is-javascript.jpg)
```

![This is JavaScript](https://jonmircha.com/img/blog/this-is-javascript.jpg)


### Enlaces

```
[YouTube](https://youtube.com/jonmircha)
```

[YouTube](https://youtube.com/jonmircha)

