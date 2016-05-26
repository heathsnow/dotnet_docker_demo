#!/usr/bin/env bash
set -e

DOCKER_VERSION=$1
echo "==> Installing Docker $DOCKER_VERSION"


IFS='=' read _ DISTRIB_CODENAME <<< $(grep </etc/lsb-release 'DISTRIB_CODENAME=')

if [ -z "$DISTRIB_CODENAME" ]; then
  echo >&2 "Fatal: /etc/lsb-release doesn't contain DISTRIB_CODENAME variable"
  exit 1
fi


echo -e "\n==> Ubuntu release codename: $DISTRIB_CODENAME"

apt-key adv \
  --keyserver hkp://p80.pool.sks-keyservers.net:80 \
  --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

cat <<< "deb https://apt.dockerproject.org/repo ubuntu-$DISTRIB_CODENAME main" \
    >/etc/apt/sources.list.d/docker.list


echo -e "\n==> Updating APT cache..."

apt-get update


echo -e "\n==> Installing kernel extensions..."

apt-get install -y linux-image-extra-$(uname -r)


echo -e "\n==> Installing Docker..."

apt-get install -y --force-yes "docker-engine=${DOCKER_VERSION}*"


echo -e "\n==> Checking installation..."

docker info >/dev/null || {
  echo >&2 'Docker installation failed =('
  exit 1
}

echo -e "\n==> All good!"