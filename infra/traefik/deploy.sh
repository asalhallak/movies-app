source ../environments.sh
source ../environments.sh remote

docker stack deploy --compose-file traefik-stack.yml traefik