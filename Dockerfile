FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.26

RUN gem install gocd-slack-server --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["gocdss"]
CMD ["--help"]
