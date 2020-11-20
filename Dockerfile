FROM nextcloud
MAINTAINER Sebastian Schneider <mail@sesc.eu>

RUN sed -i "s|^exec|echo 'prerun'\nif [ -e '/var/www/html/data/prerun.sh' ]; then run_as /var/www/html/data/prerun.sh; fi\necho 'prerun - end'\nexec|g" /entrypoint.sh
