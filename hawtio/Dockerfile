FROM java:8

MAINTAINER uguy

# Github repo :  https://github.com/hawtio/hawtio
ENV HAWTIO_VERSION 1.4.67

ENV HAWTIO_CONTEXT_PATH "/hawtio"
ENV hawtio_authenticationEnabled false
ENV hawtio_noCredentials401 true
ENV hawtio_offline false
ENV hawtio_sessionTimeout 1800

ENV hawtio_dirname /hawtio
ENV hawtio_config_dir /hawtio/config
ENV hawtio_maven_index.dir /hawtio/index

RUN mkdir -p ${hawtio_dirname}/config
RUN mkdir -p ${hawtio_dirname}/index
RUN mkdir -p ${hawtio_dirname}/plugins

ADD https://oss.sonatype.org/content/repositories/public/io/hawt/hawtio-app/${HAWTIO_VERSION}/hawtio-app-${HAWTIO_VERSION}.jar ${hawtio_dirname}/hawtio.jar
ADD entrypoint.sh ${hawtio_dirname}/entrypoint.sh

RUN \
  groupadd hawtio && \
  useradd -g hawtio -m -s /bin/false -d ${hawtio_dirname} hawtio && \
  echo 'hawtio:hawtio' |chpasswd  && \
  chown -R hawtio:hawtio ${hawtio_dirname}

USER hawtio

ENTRYPOINT ${hawtio_dirname}/entrypoint.sh

EXPOSE 8080
