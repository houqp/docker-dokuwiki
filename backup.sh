#!/bin/bash

docker run --rm --volumes-from dokuwiki -v $(pwd):/backup ubuntu tar zcvf /backup/dokuwiki-backup.tar.gz /var/www
