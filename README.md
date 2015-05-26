# Docker compose workflow with Timeseries, MQTT and NGINX servers

... IOT platform is run by a number of micro services. Some of them is exposed to the outside with an api.
The platform fully secures both users, api's and iot devices in a comprehensive security framework.

The docker compose file "docker-compose" defines the docker container services needed to run the ... IOT platform. 
[PM2](https://github.com/Unitech/pm2) monitors the services and automaticakky restarts the processes in case of a crash.
You can also control the server processes with PM2 

## Platform installation
If you haven't installed Docker and Compose on the target machine follow these [instructions](https://docs.docker.com/compose/install/)

Retrieve the docker compose file by cloning this git repositry. You might need to [install git](http://git-scm.com/book/en/v2/Getting-Started-Installing-Git)


After this run the compose command in the docker library. 
```bash
docker-compose up -d
```

Web app is served by nginx and static files aare mounted on the volume specified in the Docker compose volume mapping. You can deploy your web app to this directory.
Default mounted directory is: 
```bash
/ecs/webroot 
```

### Monitoring services
Application service is monitored by PM2 and can be shutdown and restarted with PM. Consult the PM2](https://github.com/Unitech/pm2) documentation for further information.

Application logs is retrieved with this command:

```bash  
docker exec <container id> more /root/.pm2/logs/app-out-0.log
```

### NGINX server names

The nginx configuration has hardcoded server host names used in the current project setup. The host names can be changed but then you must change the nginx entry in the docker compose file to build the nginx docker image. Change "image: jensoleg/nginx" to "build: nginx". 

## .. IOT platform api

### Device ressources

### Timeseries 

### MQTT 