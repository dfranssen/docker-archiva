FROM dfranssen/docker-base
MAINTAINER Dirk Franssen "dirk.franssen@gmail.com"

ENV VERSION 2.1.1

RUN curl -sSLo /archiva.tar.gz http://www.apache.org/dist/archiva/${VERSION}/binaries/apache-archiva-${VERSION}-bin.tar.gz && \
    echo "18b7124e6f0a2c8f7db8167c6946d762  /archiva.tar.gz" | md5sum -c && \
    echo "5a7ddff9d85637cafa1e982a7b313a3ffe8190fa  /archiva.tar.gz" | sha1sum -c && \
    tar -zxf /archiva.tar.gz -C / && \
    rm /archiva.tar.gz

ENV ARCHIVA_BASE /apache-archiva-$VERSION
WORKDIR /apache-archiva-2.1.1

RUN mkdir /archiva-data
RUN ln -s /archiva-data /apache-archiva-$VERSION/data
VOLUME /archiva-data

EXPOSE 8080
CMD ["bin/archiva", "console"]