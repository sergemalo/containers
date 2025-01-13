################################################################################
## Dockerfile for Time Logger
################################################################################
FROM python:3.11

# https://docs.docker.com/engine/reference/builder/#workdir
# Create and cd into /code as your working directory
WORKDIR /code


### Environment Setup ###
# Don't need .pyc files in a builder
ENV PYTHONDONTWRITEBYTECODE=1
# Allow statements and log messages to appear immediately
ENV PYTHONUNBUFFERED=1
# We don't need the PIP version check warning
ENV PIP_DISABLE_PIP_VERSION_CHECK=on

### Update OS level packages ###
RUN apt-get update && apt-get -y upgrade

ADD ./time-logger.sh ./time-logger.sh


### Run the server !!! ###
# This is called each time we start the container
CMD ["./time-logger.sh"]

