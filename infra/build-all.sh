. ./environments.sh

echo ------------------------------------------------------------------------------------------
echo \| building frontend...
echo ------------------------------------------------------------------------------------------
export version='1.0.0'
export FRONTEND_IMAGE=${DOCKER_REGISTRY}/movieapp-frontend:${version}
export DOCKER_HOST=ssh://sensory-root@192.168.152.81


cd ${root_dir}/client/

docker build . -f ./docker/builder.dockerfile -t ${FRONTEND_IMAGE}
docker push ${FRONTEND_IMAGE}

echo ------------------------------------------------------------------------------------------
echo \| building backend...
echo ------------------------------------------------------------------------------------------
export version='1.0.0'
export BACKEND_IMAGE=${DOCKER_REGISTRY}/movieapp-backend:${version}

cd ${root_dir}/server/

docker build . -f ./docker/builder.dockerfile -t ${BACKEND_IMAGE}
docker push ${BACKEND_IMAGE}
