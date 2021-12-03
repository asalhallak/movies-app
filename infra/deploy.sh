. ./environments.sh

echo ------------------------------------------------------------------------------------------
echo \| Deploy...
echo ------------------------------------------------------------------------------------------
export version='1.0.0'
export app="movies"
export FRONTEND_IMAGE=${DOCKER_REGISTRY}/movieapp-frontend:${version}
export BACKEND_IMAGE=${DOCKER_REGISTRY}/movieapp-backend:${version}

export DOCKER_HOST=ssh://sensory-root@192.168.152.81
echo ------------------------------------------------------------------------------------------
echo \| server: $DOCKER_HOST
echo \| version: $version
echo ------------------------------------------------------------------------------------------

docker stack deploy -c docker-stack.yml  --resolve-image always --with-registry-auth --prune ${app}
