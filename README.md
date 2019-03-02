# lab-data-volumes
Messing around with docker-compose and data volumes. 

This works from a totally clean build. To create a data container, data volume,
and mount that to a working container, simply run

```
docker-compose build
docker-compose up -d
docker exec -it gostuff cat /config/config.conf
```

and voila! You should see sample text from the data container. 
