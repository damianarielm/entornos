# Entorno de Programación

## Novedades 2024

* Planilla de alumnos para tomar asistencia:
  - Incluye estadísticas básicas como asistencias por alumno y general.

* Planificación estimada:
  - Se logró duplicar la cantidad de tiempo para control de versiones y contenedores.
  - Se planificaron 10 posibles clases perdidas, para distribuir entre paros y feriados.
  - Se prevé el recuperatorio dentro del tiempo de cursado.

* Metodología de evaluación:
  - Se tomarán dos exámenes. Los mismos se calificarán sin nota (aprobado o insuficiente).
  - Los examenes harán menos hincapié en bash scripting y mas en uso de comandos.
  - Se pueden recuperar ambos parciales, pero el tiempo está pensado para uno solo.
  - También debe defenderse en forma oral un TP grupal (a definir).
  - Se adjuntan [exámenes](examenes/) del 2023 como referencia.

* Nuevo material:
  - Nuevo material en forma de (apunte)[apunte/apunte.pdf]. Incluye nuevos temas.
  - En el apunte se marcó en gris aquellos temas que no se evalúan EN PARCIAL.
  - Los temas que se encuentran tachados no formarán parte del apunte este año, pero se evaluan igual.
  - Es probable que el apunte continue evolucionando, sin embargo se podría congelar una versión antes de comenzar.
  - Pueden generarse versiones del material tanto en baja definición, como en blanco y negro; o bien separado por partes.
  - Se adjunta un [listado](diff) de temas agregados y eliminados del material anterior.

## Dependencias

Para poder compilar el material es necesario instalar las siguientes dependencias:

* Fontawesome para LaTeX:

```bash
apt install texlive-fonts-extra
```

* Pygments

```bash
apt install python3-pygments
```

## Configuracion

Es necesario habilitar programas externos para compilar. Esto puede hacerse desde:

Documento/Configuracion/Formatos/Allow running external programs

o bien, editando el archivo `~/.lyx/session

Luego basta ejecutar:

```bash
make
```
