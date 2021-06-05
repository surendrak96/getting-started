docker build -t python_test .
  
# check if the production contaier is not running

if [ ! "$(docker ps -q -f name=python)" ];then

    # cehck if the container is in docker ps -a

    if [ "$(docker ps -aq -f status=exited -f name=python)" ];then

        docker rm python

    fi

    run

else

    stop_rm

    run

fi

# remove <none>:<none> image in docker images

if [ "$(docker images -f "dangling=true" -q" ];then

    docker rmi $(docker images -f "dangling=true" -q)

fi
