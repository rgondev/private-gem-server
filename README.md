# private-gem-server: Servidor privado de gemas

Mini-reto formativo para explorar el funcionamiento de los servidores de gemas.

## Objetivo del reto

Conseguir levantar un servidor privado de gemas y operar sobre él.

### Operativa

1. Clona el proyecto
1. Genera un nuevo branch con un nombre original y divertido
1. Desarrolla sobre tu branch
1. Haz push al repositorio del nuevo branch

## Nivel 1: Levantar un servidor gemas privado con contenedores docker

### Requisitos funcionales

* Utilizar "docker compose" para levantar un servidor privado de gemas.
* El puerto de comunicación con el servidor de gemas debe ser configurable localmente sin afectar a
otros desarrolladores.
* Publicar una gema en nuestro servidor privado de gemas (utilizar la gema del reto
<https://git.tirant.net/learning/challenges/create-gem>)
* Instalar la gema en nuestro sistema desde el servidor privado de gemas

### Recursos

* <https://guides.rubygems.org/run-your-own-gem-server/>
* <https://handbook.tirant.com/onboarding/docker.html>
* <https://docs.docker.com/get-started/>
* <https://docs.docker.com/compose/>
* <https://docs.docker.com/compose/multiple-compose-files/>
* <https://hub.docker.com/_/ruby>
* <https://www.geeksforgeeks.org/running-a-ruby-application-using-docker/>

## Nivel 2: Desplegar el servidor de gemas en OpenShift

### Requisitos funcionales

* Desplegar un proyecto en OpenShift que levante el servidor privado de gemas.
* Publicar una gema en el servidor privado de gemas de OpenShift (utilizar la gema del reto
<https://git.tirant.net/learning/challenges/create-gem>).
* Instalar la gema en nuestro sistema desde el servidor privado de gemas de OpenShift

### Recursos

* <https://handbook.tirant.com/formaci%C3%B3n/1_Itinerarios/OpenShift/01_readme.html>
* <https://developers.redhat.com/learn/openshift>
