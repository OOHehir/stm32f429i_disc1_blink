#!/bin/bash
# Quick script to set env & build for xiao_esp32s3

if [ "$EUID" -eq 0 ]
  then echo "Don't run as root!"
  exit
fi

export ZEPHYR_TOOLCHAIN_VARIANT=zephyr
export ZEPHYR_SDK_INSTALL_DIR=/home/owen/

source ../zephyrproject/.venv/bin/activate
source ../zephyrproject/zephyr/zephyr-env.sh
source ../zephyrproject/zephyr/scripts/west_commands/completion/west-completion.bash

west update
west build -p always -b stm32f429i_disc1
west flash