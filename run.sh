

docker rm $(docker ps -aq) -f

docker build -t laravel .

docker-compose up -d

docker ps