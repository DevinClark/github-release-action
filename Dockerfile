FROM alpine:latest

LABEL "com.github.actions.name"="Github Release Action"
LABEL "com.github.actions.description"="Create a github release when a tag is created. Attaches all .tgz files to the release."
LABEL "com.github.actions.icon"="activity"
LABEL "com.github.actions.color"="red"

RUN	apk add --no-cache \
	bash \
	ca-certificates \
	curl \
	jq

COPY cleanup-pr-branch /usr/bin/cleanup-pr-branch

ENTRYPOINT ["cleanup-pr-branch"]
