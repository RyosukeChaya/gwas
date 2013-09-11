#!/bin/bash

if [ ! -f "${1}" ]
then
	echo "Usage: ${0} param-file"
	exit 9
fi

SCRIPT_DIR=${0%/*}

# read params
. ${1}

LOG_DIR=${DATA_DIR}/log
mkdir -p ${DATA_DIR}
mkdir -p ${LOG_DIR}

# Formatting
. ${SCRIPT_DIR}/01-filter.sh
. ${SCRIPT_DIR}/02-annovar.sh
. ${SCRIPT_DIR}/03-plot.sh

