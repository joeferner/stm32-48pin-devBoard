#!/bin/bash

mkdir -p build
cd build
rm stm32-ft312d-test.elf
make stm32-ft312d-test.bin && \
make stm32-ft312d-test.list
