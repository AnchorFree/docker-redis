#!/bin/bash

DIR=$(dirname $(readlink -f $0))
. ${DIR}/tools.sh

info "$(date) Start container setup"

# Redis config dir
REDIS_CONF_DIR=/usr/local/etc/redis

# Redis cast config from template
envtpl < ${REDIS_CONF_DIR}/redis.tpl > ${REDIS_CONF_DIR}/redis.conf || error "Failed to cast redis template"

redis-server ${REDIS_CONF_DIR}/redis.conf
