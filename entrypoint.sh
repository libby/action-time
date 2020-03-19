#!/bin/sh -l

CONFIG_PREFIX=$1
echo "Running test for config prefix $CONFIG_PREFIX"
cd /qubernetes
pwd
ls
./testing/gen-configs.sh ${CONFIG_PREFIX}
# ls /github/workspace
# copy generated resources to working directory so they can be tested
# on a running k8s service, e.g. kind.
cp -r testing/*-out /github/workspace/testing/
