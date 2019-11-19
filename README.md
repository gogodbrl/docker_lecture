# docker_lecture
2019-11-18 ~ 19 docker 수업 - 짱좋아요..

[2019.11.18]

#### 첫날수업 : docker hub에 기존에 존재하는 image올려보기
```
https://hub.docker.com/repository/docker/gogodbrl/nginx1
```

[2019.11.19]

#### 둘쨋날 수업 : docker build. Dockerfile에 스크립트를 작성 후 docker image를 직접 빌드해 보기

```
vagrant-example(git) : git clone https://github.com/Finfra/vagrant-examples/
dockers(git) : git clone https://github.com/Finfra/dockers.git
```

#### dockerfiles-ubuntu-user-adderable
Ubuntu, It support base user creation and password setting.

# Building & Running
Copy the sources to your docker host and build the container, and to run.
```
	docker build --rm -t gogodbrl/ubuntu .
	docker run -it --name u1 -e USER=jakim -e PASSWD=jakim gogodbrl/ubuntu
```
Get the port that the container is listening on:

```
# docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
ad2ad96e4b2f        gogodbrl/ubuntu      "/bin/bash"         7 seconds ago       Up 6 seconds                            u1
```

To test, ("jakim" is username. )
```
	su - jakim
```
To Rollback
```
    docker rm u1 -f
    docker rmi gogodbrl/ubuntu
```


