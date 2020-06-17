# emmaDocker
docker image from which to run Emma for infrastructure set-up

## ssh keys
use of emma and ansible requires ssh keys.

The user should create a directory named phenokeys in the repos top direcotry and place thwem in there

## build docker image
The docker image (base ubuntu 18.04) with ansible and git clone of nlesc/emma  phenology) can be built
using `./build_emmaDocker.sh`
this will create an image `nles/emmahost:latest`

# run docker container
the docker container can be brought up from the image using
`./run_emmaDocker.sh'
the container is called `emmaD` 
This will also mount the phenokeys directory providing acces to the required ssh keys

To acces the running container use:
`docker attach emmaD`

this will provide access to the running container a `root`


