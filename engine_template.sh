#!/bin/sh

ENGINE_ID=
REPOSITORY_URL=
JBE_USER=
JBE_PASSFILE=
JBE_WORKDIR=

export ENGINE_ID REPOSITORY_URL JBE_USER JBE_PASSFILE

export JBE_INSTALL=/opt/IBM/jazz/v3/TeamConcertBuild_3000
export JBE_HOME=${JBE_INSTALL}/buildsystem/buildengine/eclipse
export JBE_BUILDTOOLKIT=${JBE_INSTALL}/buildsystem/buildtoolkit

export JBE_INSTALL JBE_HOME JBE_BUILDTOOLKIT

cd ${JBE_WORKDIR}
${JBE_HOME}/jbe -repository ${REPOSITORY_URL} -userId ${JBE_USER} -passwordFile ${JBE_PASSFILE} -engineId ${ENGINE_ID} 