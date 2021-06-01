FROM debian:buster

LABEL mantainer="soporte@sbit.io"
LABEL org.opencontainers.image.authors="Sbit.io <soporte@sbit.io>"

RUN apt-get update -qq \
 && echo "locales locales/default_environment_locale select $LOCALE" | debconf-set-selections \
 && echo "locales locales/locales_to_be_generated select $LOCALE $LOCALE_CHARSET" | debconf-set-selections \
 && DEBIAN_FRONTEND=noninteractive \
    apt-get install -yqq -o=Dpkg::Use-Pty=0 \
      curl \
      diffutils \
      jq \
 && rm -rf /var/lib/apt/lists/* \
 && apt-get clean -yqq

WORKDIR /app

COPY jenkins_remote_trigger.sh /usr/bin/

RUN chmod +x /usr/bin/jenkins_remote_trigger.sh

ENTRYPOINT [ "/usr/bin/jenkins_remote_trigger.sh" ]
