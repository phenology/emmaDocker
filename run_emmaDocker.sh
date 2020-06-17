docker run -d \
           -it \
           --name emmaD \
           --mount type=bind,source="$(pwd)"/phenokeys,target=/emma/phenokeys \
           nlesc/emmahost:latest bash
