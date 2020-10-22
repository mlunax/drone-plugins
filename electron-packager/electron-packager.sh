#!/bin/sh
PLATFORM=linux
ARCH=x64
DIR=./
APPNAME=app
IGNORE="--ignore=${PLUGIN_IGNORE}"


if [ -n "${PLUGIN_ARCH}" ]; then
    ARCH=${PLUGIN_ARCH}
fi

if [ -n "${PLUGIN_PLATFORM}" ]; then
    PLATFORM=${PLUGIN_PLATFORM}
fi

if [ -n "${PLUGIN_DIR}" ]; then
    DIR=${PLUGIN_DIR}
fi

if [ -n "${PLUGIN_APPNAME}" ]; then
    APPNAME=${PLUGIN_APPNAME}
fi

PARAMS="--arch=${ARCH} --platform=${PLATFORM} ${IGNORE} ${PLUGIN_PARAMS}"

npm i
npx electron-packager ${DIR} ${APPNAME} \
    ${PARAMS}

OUTDIR=${APPNAME}-${PLATFORM}-${ARCH}


if [ "${PLUGIN_TARGZ}"=="true" ]; then
    tar -zcf ${DIR}/${APPNAME}.tar.gz ${OUTDIR}
    if [ -n "${PLUGIN_COPYTO}" ]; then
        cp -rv ${DIR}/${APPNAME}.tar.gz ${PLUGIN_COPYTO}
    fi
elif [ -n "${PLUGIN_COPYTO}" ]; then
    cp -rv ${OUTDIR} ${PLUGIN_COPYTO}
fi