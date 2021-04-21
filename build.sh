#! /bin/bash

HERE=$( dirname "$0" )

: ${IMAGE_NAME:="licit_discret_lab"}
: ${HPC_REGISTRY_NAME:="s-hpc-registry.dip-olabs-research.net"}

docker build \
       -t "${HPC_REGISTRY_NAME}/${IMAGE_NAME}" \
       "${HERE}"
