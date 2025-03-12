# Blinky
Simple 'out of tree' project on the blinky example for the [STM32F429I-DISC1](https://docs.zephyrproject.org/latest/boards/st/stm32f429i_disc1/doc/index.html)

This assumes you've already installed & configured Zephyr & [STM32CubeProgrammer](https://docs.zephyrproject.org/latest/boards/st/stm32f429i_disc1/doc/index.html#flashing)

## Use the build script:
```
    ./build.sh
```

## Initialize environment:
As normal, source the environment:
```
    source ../zephyrproject/.venv/bin/activate
    source ../zephyrproject/zephyr/zephyr-env.sh
    source ../zephyrproject/zephyr/scripts/west_commands/completion/west-completion.bash
    export ZEPHYR_TOOLCHAIN_VARIANT=zephyr
    export ZEPHYR_SDK_INSTALL_DIR=<path to SDK>
```

## Build:
Build application & bootloader
```
    west build -p always -b stm32f429i_disc1
```
## Flash using OpenOCD:
```
    west flash --runner openocd
```