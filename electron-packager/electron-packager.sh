#!/bin/sh
cd ${PLUGIN_WORKDIR}
electron-packager ${PLUGIN_WORKDIR} \
    ${PLUGIN_PARAMS}