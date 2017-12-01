#!/bin/sh
#
# Install script for su-git
#
# @project su-git
# @author  yannoff
# @license MIT
#

err_dep(){
    printf "\nError: unmet requirement \033[01;37m%s\033[00m.\nPlease install %s on your machine, then retry.\n\n" $1 $1
    exit 1
}

which docker >/dev/null 2>&1 || err_dep docker
which git >/dev/null 2>&1 || err_dep git
echo "\nPulling sshbox image from dockerhub...\n";
docker pull yannoff/sshbox || true
