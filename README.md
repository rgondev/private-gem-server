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


### Descripción
Servidor de gemas de Ruby

Este servidor se ha montado con la gema [geminabox](https://github.com/geminabox/geminabox) en una instalación dockerizada a través de docker-compose.

Para arrancar el proyecto ejecutamos los siguientes comandos

```
make build && make up
```

Una vez levantado el contenedor se puede acceder al servidor de gemas en la URL http://localhost:9292.

![](backoffice.png)

Podemos modificar el puerto de salida del servidor de gemas en el fichero `docker-compose.dev.yml` por otro de nuestro gusto.

### Basic Auth
Para bloquear accesos indevidos podemos añadir al servidor una autenticación HTTP básica a nuestro servidor de gemas.
Se configura en el fichero `config.ru` y a través de las variables `HTTP_BASIC_AUTH_USERNAME` y `HTTP_BASIC_AUTH_PASSWORD` del fichero `docker-compose.dev.yml` 

### Como se sube una gema
Para subir una gema utilizamos la interfaz web. Hacemos clic en la portada en el enlace `Upload another gem` y nos llevará a un formulario para subir un fichero con formato `.gem`

![](upload.png)

Una vez subida la gema en el backoffice del servidor de gemas se mostraran las gemas contenidas en nuestro servidor

### Como se consume una gema de nuestro servidor

En el proyecto destino donde queremos usar nuestro servidor de gemas, debemos añadir las siguientes lineas al fichero de `Gemfile`

```
source 'https://localhost:9292'

gem `my_hosted_gem`
```

Usaremos 'https://host.docker.internal:9292/ para instalaciones dockerizadas que se comunican a través de la red de Docker
Usaremos 'http://admin:admin@host.docker.internal:9292' para instalaciones con Basic Auth

### Comandos
Puedes usar los comandos que se encuentra en el Makefile

`make build`: Contrucción de la imagen.  
`make up`: Levantar el contenedor con la aplicación del servidor de gemas.  
`make down`: Parar el contenedor con la aplicación del servidor de gemas.  
`make shell`: Navegación en una bash dentro del contenedor.  

## Nivel 2: Desplegar el servidor de gemas en OpenShift

>  ***En construcción***

### Requisitos funcionales

* Desplegar un proyecto en OpenShift que levante el servidor privado de gemas.
* Publicar una gema en el servidor privado de gemas de OpenShift (utilizar la gema del reto
<https://git.tirant.net/learning/challenges/create-gem>).
* Instalar la gema en nuestro sistema desde el servidor privado de gemas de OpenShift

### Recursos

* <https://handbook.tirant.com/formaci%C3%B3n/1_Itinerarios/OpenShift/01_readme.html>
* <https://developers.redhat.com/learn/openshift>
