#!/bin/bash

TS=`date '+%Y%m%d-%H%M'`
JBE=/opt/IBM/RTC/buildsystem/buildengine/eclipse/jbe
WORK_DIR=/opt/jbe
LOG_DIR=${WORK_DIR}/logs


repositoryAddress=https://hub.jazz.net/ccm01/
userId=swilbur
engineId=swilbur.engine0
engine_dir=${WORK_DIR}/${engineId}
passwordFile=${WORK_DIR}/swilbur.jazzhub
log_file=${LOG_DIR}/${engineId}-${TS}.log


CMD="${JBE} -repository ${repositoryAddress} -userId ${userId} -passwordFile ${passwordFile} -engineId ${engineId}"

echo ${CMD}
pushd ${engine_dir}
${CMD} > ${log_file} &
popd

