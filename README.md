docker-archiva
==============
A dockerfile with a standalone [Apache Archiva 2.2.1](http://archiva.apache.org/docs/2.1.1/index.html)

In order to run it:

		docker run -d --name myarchiva-data -v /archiva-data busybox:ubuntu-14.04 true
    docker run -d --name myarchiva -p 3434:8080 --volumes-from myarchiva-data dfranssen/docker-archiva