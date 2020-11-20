FROM nextcloud
MAINTAINER Sebastian Schneider <mail@sesc.eu>

RUN sed -i "s|^exec|if [ -e '/var/www/html/data/prerun.sh' ]; then run_as /var/www/html/data/prerun.sh; fi\nexec|g" /entrypoint.sh
