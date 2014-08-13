#!/bin/bash

cp mods/* ../kicad-library/mods/
kicad-split --yes -i stm32-48pin-devBoard.lib -o ../kicad-library/libs/
