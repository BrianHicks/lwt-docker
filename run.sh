#!/usr/bin/env bash
docker run --name lwt-mysql -v $(pwd)/mysql:/var/lib/mysql -e MYSQL_DATABASE=learning-with-texts -e MYSQL_USER=lwt -e MYSQL_PASSWORD=lwt -e MYSQL_ROOT_PASSWORD=brian -d mysql:5.7
docker run --name lwt -p 80:80 -v $(pwd)/media:/var/www/html/media --link=lwt-mysql:mysql -d brianhicks/lwt-docker
