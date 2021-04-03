#!/bin/bash

SINGULARITY_IMAGE=/home/akemisetti/mydev/containers/clara-train-sdk-v4.0-ea2.sif

jnotebookPort=$1
#################################### check if parameters are empty
if [[ -z  $jnotebookPort ]]; then
    jnotebookPort=8890
fi

cmd2run="/bin/bash"
singularity exec --nv -B ${PWD}/../:/claraDevDay/ --pwd ${PWD} ${SINGULARITY_IMAGE} ${cmd2run}