
#FROM redteamcafe/docker-alpine
FROM alpine

MAINTAINER Christian McLaughlin <info@redteamcafe.com>

SHELL ["/bin/sh", "-c"] 

#NOTE: Update and install Nmap package
RUN apk update && apk add nmap

#NOTE: Option to run once, exit, and remove container

#NOTE: Option to perform scheduled updates
# daily (select the time UTC)
