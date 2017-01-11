#!/bin/bash

# Stop script if a command fails
set -e
set -o pipefail

SCRIPT_FILE=`readlink -f "${0}"`
SCRIPT_PATH=`dirname "${SCRIPT_FILE}"`

sassc -m -t compressed "${SCRIPT_PATH}/src/res/scss/main.scss" "${SCRIPT_PATH}/static/res/css/main.css"
