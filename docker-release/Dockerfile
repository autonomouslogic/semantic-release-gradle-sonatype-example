# https://github.com/containerbase/node/blob/main/Dockerfile
# https://github.com/containerbase/java/blob/main/Dockerfile
# https://github.com/renovatebot/docker-renovate-full/blob/main/Dockerfile

FROM ghcr.io/containerbase/buildpack:4.15.1

# renovate: datasource=node
RUN install-tool node v14.19.2

# renovate: datasource=adoptium-java
RUN install-tool java 11.0.15+10

# renovate: datasource=gradle-version versioning=gradle
RUN install-tool gradle 7.4.2

# renovate: datasource=docker versioning=docker
RUN install-tool docker 20.10.15

RUN mkdir -p /root/.ssh && touch /root/.ssh/known_hosts
RUN ssh-keyscan github.com >> ~/.ssh/known_hosts
