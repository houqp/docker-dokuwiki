#!/bin/bash

docker create -p 8000:80 --name dokuwiki houqp/dokuwiki:2015-08-10
docker run --volumes-from dokuwiki --name dokuwiki-data busybox
docker run --rm --volumes-from dokuwiki -w / -v $(pwd):/backup ubuntu tar xzvf /backup/dokuwiki-backup.tar.gz
docker start dokuwiki
