#!/bin/bash

echo "Sync'ing mods"
for f in mods/*
do
  FILENAME=$(basename $f)
  KICADLIB_FILENAME=../kicad-library/mods/${FILENAME}
  LOCAL_FILENAME=./mods/${FILENAME}
  if [ -f ${KICADLIB_FILENAME} ]; then
    cp ${KICADLIB_FILENAME} ${LOCAL_FILENAME}
  else
    echo "Could not find ${KICADLIB_FILENAME}"
  fi
done

kicad-update -i stm32-48pin-devBoard.lib.list -o stm32-48pin-devBoard.lib --basedir ../kicad-library
