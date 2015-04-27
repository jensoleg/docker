# Docker compose workflow with Node app, MQTT and NGINX

Run the command 

```bash
docker-compose up -d
```

The client web app can be mounted on NGINX by specifying the volume mapping in the Docker compose file. Default is 

```bash
/ecs/webroot 
```