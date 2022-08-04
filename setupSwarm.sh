sudo docker swarm init
sudo docker stack deploy -c docker-compose.yml collegemgmtsetup
sudo docker service ls
sudo docker service ps collegemgmtsetup_web
sudo docker ps -a
