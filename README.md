# Docker compose workflow with Timeseries, MQTT and NGINX servers

... IOT platform is run by a number of micro services. Some of them is exposed to the outside with an api.
The platform fully secures both users, api's and iot devices in a comprehensive security framework.

The docker compose file "docker-compose" defines the docker container services needed to run the ... IOT platform. 
[PM2](https://github.com/Unitech/pm2) will monitor the services and automaticakky restart the processes in case of a crash. 

## Platform installation
If you haven't installed Docker and Compose on the target machine follow these [instructions](https://docs.docker.com/compose/install/)

Retrieve the docker compose file by cloning this git repositry. You might need to [install git](http://git-scm.com/book/en/v2/Getting-Started-Installing-Git)


After this run the compose command in the docker library. 
```bash
docker-compose up -d
```

The client web app is mounted on NGINX in the volume mapping in the Docker compose file. You can deploy your web app to this directory.
Default mounted directory is: 
```bash
/ecs/webroot 
```


### NGINX server names

The nginx configuration has hardcoded server host names used in the current project setup. The host names can be changed but then you must change the nginx entry in the docker compose file to build the nginx docker image. Change "image: jensoleg/nginx" to "build: nginx". 

## .. IOT platform api

### Device ressources

### Timeseries 

### MQTT 