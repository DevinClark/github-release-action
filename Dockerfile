FROM alpine:latest

LABEL "com.github.actions.name"="Github Release Action"
LABEL "com.github.actions.description"="Create a github release when a tag is created. Attaches all files matching the passed arguments to the release, defaults to anything matching *.tgz files."
LABEL "com.github.actions.icon"="archive"
LABEL "com.github.actions.color"="purple"
LABEL "repository"="http://github.com/devinclark/github-release-action"
LABEL "homepage"="http://github.com/devinclark/github-release-action"
LABEL "maintainer"="Devin Clark <github@devinenergy.com>"

RUN	apk add --no-cache \
	bash \
	ca-certificates \
	curl \
	file \
	jq

COPY create-github-release /usr/bin/create-github-release

ENTRYPOINT ["create-github-release"]
