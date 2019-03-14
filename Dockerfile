FROM alpine:latest

LABEL "com.github.actions.name"="Github Release Action"
LABEL "com.github.actions.description"="Create a github release when a tag is created. Attaches all .tgz files to the release."
LABEL "com.github.actions.icon"="activity"
LABEL "com.github.actions.color"="purple"

RUN	apk add --no-cache \
	bash \
	ca-certificates \
	curl \
	file \
	jq

COPY create-github-release /usr/bin/create-github-release

ENTRYPOINT ["create-github-release"]
