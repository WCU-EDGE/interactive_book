echo on

docker image rm book-master:latest 
docker image rm book-worker:latest 

docker build -t book-master:latest ./docker/master
docker build -t book-worker:latest ./docker/worker
