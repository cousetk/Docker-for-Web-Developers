docker build -t logging-to-a-volume .

docker run -d -p 3000:3000 -v /var/www/logs logging-to-a-volume

docker stop 5f1 && docker rm -v 5f1

docker run -d -p 3000:3000 -v "$(pwd)/logs:/var/www/logs" logging-to-a-volume

