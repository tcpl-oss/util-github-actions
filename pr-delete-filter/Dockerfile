FROM hashicorp/terraform:0.11.13

LABEL "com.github.actions.name"="pr delete filter"
LABEL "com.github.actions.description"="Workaround for PR branch deletion (not master) which trigger a GitHub Actions push event with a GITHUB_REF=refs/heads/master"
LABEL "com.github.actions.icon"="filter"
LABEL "com.github.actions.color"="gray-dark"

LABEL "repository"="https://github.com/tcpl-oss/util-github-actions"
LABEL "homepage"="http://github.com/tcpl-oss/util-github-actions"
LABEL "maintainer"="Tcpl"

RUN apk --no-cache add jq

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
