#!/bin/bash
# Helper script to run a build engine.
# @sgwilbur
#
# todo:
#  Add runas user
# check if directories exist

ts=`date '+%Y%m%d-%H%M'`

jbe_install_dir="/opt/IBM/TeamConcertBuild"
jbe_dir="${jbe_install_dir}/buildsystem/buildengine/eclipse"
jbe_toolkit="${jbe_install_dir}/buildsystem/buildtoolkit"
jbe="${jbe_dir}/jbe"

work_dir="/var/ibm/jbe"
repositoryAddress="https://server/ccm"
userId="build"
passwordFile="${work_dir}/build.pwd"
engineId="jke.dev.engine"

engine_work_dir="${work_dir}/${engineId}"
log_file="${engine_work_dir}/${engineId}-${ts}.log"

CMD="${jbe} -repository ${repositoryAddress} -userId ${userId} -passwordFile ${passwordFile} -engineId ${engineId}"

echo "Starting a new Build Engine process @ ${ts}" 	>  ${log_file}
echo "\tWorking directory: ${engine_work_dir}  "	>> ${log_file}
echo "\trepositoryAddres: ${repositoryAddress}"	 	>> ${log_file}
mkdir -p ${engine_work_dir} 						>> ${log_file}
pushd ${engine_work_dir}
echo ${CMD} 										>> ${log_file}
echo "############################################" >> ${log_file}
${CMD} 												>> ${log_file} &
popd