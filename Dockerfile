FROM hashicorp/packer:latest
LABEL maintainer="Mihir Mone <monemihir@hotmail.com>"

RUN apk add ansible

RUN ansible --version

# Packer needs this set:
# https://github.com/mitchellh/packer/blob/49067e732a66c9f7a87843a2c91100de112b21cc/provisioner/ansible/provisioner.go#L127
ENV USER root
