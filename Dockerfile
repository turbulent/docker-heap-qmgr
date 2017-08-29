FROM turbulent/heap-app:4.0.0
MAINTAINER Benoit Beausejour <b@turbulent.ca>

ENV heap-qmgr 4.0.1

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update &&  \
  apt-get -y install -y imagemagick \
                        ghostscript \
                        libreoffice \
                        pdftk && \
  rm -rf /var/lib/apt/lists/* 

ADD supervisord.conf.tmpl /systpl/supervisord.conf.tmpl
ADD run-heap-qmgr.sh.tmpl /systpl/run-heap-qmgr.sh.tmpl
ADD run.sh /run.sh

ENV VAR_HEAP_QUEUE_WORKERS=2 \
    VAR_HEAP_QUEUE_NAME=""

VOLUME ["/vol/website"]

CMD ["/run.sh"]
ENTRYPOINT []
