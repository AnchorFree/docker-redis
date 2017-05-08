# General description

This container provide Redis container for logging solution. Redis is using like caching frontend for Logstash. It helps with handling traffic spikes

### File description

 * bin/run.sh - shell wrapper for Redis entrypoint. It casts *.tpl config teplate file
 * bin/tools.sh - tools for error handling in shell scripts
 * config/redis.tpl - Redis config template
 * Dockerfile - docker container make file
 * Makefile - helps you build and push docker images to Docker Hub

## Container installation

 1. Clone this repository
 2. Build and push Redis image

```bash
make all && make prod
```
 3. [packer-elk](https://github.com/AnchorFree/packer-elk) repository helps you with container creation on host
