% Sistemas Operativos

###### Sistema Operativo ######

Un sistema operativo es un conjunto de programas y herramientas que controlan
y coordinan las actividades de una computadora o dispositivo electrónico,
y permiten a los usuarios interactuar con el hardware y el software de
manera sencilla y eficiente.
Está compuesto por un núcleo (o **kernel** que tiene control completo sobre el hardware en el que corre, y una serie de programas utilitarios que se comunican con el.

![SO](../apunte/imagenes/kernel.png){width=45%}

###### Funcionalidades del Sistema Operativo ######

Las funcionalidades principales de un sistema operativo incluyen:

[//]: # (COMPACT)
. . .

Abstracción de hardware
:  El sistema operativo oculta los detalles específicos del hardware
 de la computadora a las aplicaciones y los usuarios.
 Esto permite permite a las aplicaciones interactuar con el hardware de
 una manera consistente y simplificada, sin tener que preocuparse por los
 detalles internos del hardware subyacente.

[//]: # (COMPACT)
. . .

Gestión del hardware
: El sistema operativo es responsable de gestionar el hardware de
 la computadora, como el procesador, la memoria, el disco duro, la tarjeta
 gráfica, entre otros.
 Controla cómo se utilizan estos recursos y asigna la cantidad adecuada
 de memoria y procesador a cada aplicación.
 
[//]: # (COMPACT)
. . .

Interfaz de usuario
: El sistema operativo proporciona una interfaz de usuario que permite
 a los usuarios interactuar con el ordenador y ejecutar aplicaciones y programas.

[//]: # (COMPACT)
. . .

Gestión de archivos
: El sistema operativo se encarga de gestionar los archivos y directorios
 del ordenador, lo que permite a los usuarios crear, modificar, copiar y
 eliminar archivos y carpetas.

[//]: # (COMPACT)
. . .

Multitarea
: Un sistema operativo permite que varias aplicaciones se ejecuten
 al mismo tiempo y asigna los recursos necesarios para que funcionen correctamen
te.

[//]: # (COMPACT)
. . .

Multiusuario
: Un sistema operativo puede ser utilizado por varios usuarios
 al mismo tiempo y garantiza que cada usuario tenga sus propios archivos
 y configuraciones.



###### Núcleo ######

 El **kernel** (o núcleo) de un sistema operativo es la parte central y más fundamental
 del mismo.
 Es responsable de controlar el acceso a los recursos del hardware, gestionar
 los procesos, la memoria y la entrada/salida, y proporcionar una interfaz
 para que las aplicaciones interactúen con el hardware del sistema.

```bash
$ uname -r
```

[//]: # (COMPACT)
. . .

Para casi cualquier tarea las aplicaciones de usuario necesitan pedirle
 permiso al kernel, a través de una instrucción denominada 
 [**llamada a sistema**](https://es.wikipedia.org/wiki/Llamada_al_sistema).

 Cuando se produce una llamada a sistema el CPU deja de ejecutar el programa,
 y comienza a ejecutar la funcionalidad del núcleo requerida, luego de la
 cual se continua con la ejecución del programa.
