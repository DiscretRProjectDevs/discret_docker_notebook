#! /bin/bash

HERE=$( dirname "$0" )

: ${IMAGE_NAME:="licit_discret_lab"}
: ${HPC_REGISTRY_NAME:="s-hpc-registry.dip-olabs-research.net"}

docker build \
       -t "${HPC_REGISTRY_NAME}/${IMAGE_NAME}" \
       "${HERE}"

status=$?

if [[ $status -eq 0 ]]
then
    echo "Build OK.
To upload the image to the registry, please type

	docker image push ${HPC_REGISTRY_NAME}/${IMAGE_NAME}

after having logged in to the registry using
	docker login ${HPC_REGISTRY_NAME}
with the credentials you use to access the s-hpc infrastructure
" 1>&2
fi

