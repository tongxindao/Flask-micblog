#!/bash/bin

docker build -t micblog .
docker run -d --name micblog-container -p 80:80 -p 8080:8080 micblog
docker exec micblog-container /bin/bash -c "nginx"
