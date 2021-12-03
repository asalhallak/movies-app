export host=${1:-remote}
export DOCKER_REGISTRY="abdullahsensory"
export DOCKER_REMOTE_HOST=ssh://sensory-root@192.168.152.81
export url=movie-app.com
export root_dir=`pwd`/..

if [ $host == 'remote' ]
then
    export DOCKER_HOST=$DOCKER_REMOTE_HOST
fi

echo ------------------------------
echo \| server: $DOCKER_HOST
echo \| url: $url
echo ------------------------------