
FROM hashicorp/terraform:0.11.13

LABEL "com.github.actions.name"="ssh key setup"
LABEL "com.github.actions.description"="Sets up ssh keys from secrets"
LABEL "com.github.actions.icon"="play-circle"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="https://github.com/tcpl-oss/util-github-actions"
LABEL "homepage"="http://github.com/tcpl-oss/util-github-actions"
LABEL "maintainer"="Tcpl"

RUN   apk update && \
      apk add --no-cache \
      openssh

COPY config /config
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]