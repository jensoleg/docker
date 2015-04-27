# Docker compose workflow with Timeseries, MQTT and NGINX servers

The docker compose file "docker-compose" defines the application servers needed to run the ... IOT platform. 
PM2 will monitor the Timeseries and MQTT servers and automaticakky restart the processes in case of a crash. 

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

The nginx has hardcoded server names used in the current project setup. The host names can be changed but then you must change the nginx entry in the docker compose file to build the nginx docker image. Change "image: jensoleg/nginx" to "build: nginx". 

### .. IOT platform api

## Device ressources

## Timeseries 

## MQTT 