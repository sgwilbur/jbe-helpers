#!/bin/sh
#echo `export`

${JBE_HOME}/jbe -repository ${REPOSITORY_URL} -userId ${JBE_USER} -passwordFile ${JBE_PASSFILE} -engineId ${ENGINE_ID} 
