. ./environments.sh

echo ------------------------------------------------------------------------------------------
echo \| Deploy...
echo ------------------------------------------------------------------------------------------
export version='1.0.0'
export app="movies"
export FRONTEND_IMAGE=${DOCKER_REGISTRY}/movieapp-frontend:${version}
export BACKEND_IMAGE=${DOCKER_REGISTRY}/movieapp-backend:${version}

docker pull ${FRONTEND_IMAGE}
docker pull ${BACKEND_IMAGE}

docker stack deploy -c docker-stack.yml  --resolve-image always --with-registry-auth --prune ${app}
