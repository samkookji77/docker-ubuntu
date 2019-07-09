# dockerfiles-ubuntu-user-adderable
Ubuntu, It support base user creation and password setting.

# Building & Running

Copy the sources to your docker host and build the container, and to run.
```
	docker build --rm -t samkookji77/ubuntu .
	docker run -it --name u1 -e USER=samkookji77 -e PASSWD=samkookji77 samkookji77/ubuntu
```
Get the port that the container is listening on:

```
# docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
ad2ad96e4b2f        samkookji77/ubuntu      "/bin/bash"         7 seconds ago       Up 6 seconds                            u1
```

To test, ("samkookji77" is username. )
```
	su - samkookji77
```
To Rollback
```
    docker rm u1 -f
    docker rmi samkookji77/ubuntu
```
