# docker_lecture
2019-11-18 ~ 19 docker 수업

[2019.11.18]

첫날수업 : docker hub에 기존에 존재하는 image올려보기
```
https://hub.docker.com/repository/docker/gogodbrl/nginx1
```

[2019.11.19]

둘쨋날 수업 : 스크립트를 작성 후 docker image를 직접 만들어 보기(build)

# dockerfiles-ubuntu-user-adderable
Ubuntu, It support base user creation and password setting.

# Building & Running

Copy the sources to your docker host and build the container, and to run.
```
	docker build --rm -t nowage/ubuntu .
	docker run -it --name u1 -e USER=nowage -e PASSWD=nowage nowage/ubuntu
```
Get the port that the container is listening on:

```
# docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
ad2ad96e4b2f        nowage/ubuntu      "/bin/bash"         7 seconds ago       Up 6 seconds                            u1
```

To test, ("nowage" is username. )
```
	su - nowage
```
To Rollback
```
    docker rm u1 -f
    docker rmi nowage/ubuntu
```


