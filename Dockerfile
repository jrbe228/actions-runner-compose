FROM ghcr.io/actions/actions-runner:latest
USER 0
RUN apt-get update && apt-get install -y curl git python3-pip jq    #Plus a few extra tools
RUN pip3 install yq
RUN curl -L https://github.com/docker/compose/releases/download/v2.24.6/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose
RUN docker-compose version    #Verify no errors post-installation
USER runner
