#!/bin/bash
make clean
make mrproper
export ARCH=arm64
export SUBARCH=arm64
export CROSS_COMPILE=/home/nicholas/build/toolchain/aarch64-linux-android-4.9/bin/aarch64-linux-android-
#export CROSS_COMPILE=./tools/prebuilts/gcc-cfp-jopp-only/aarch64-linux-android-4.9/bin/aarch64-linux-android-
#export PATH=$(pwd)/./tools/prebuilts/gcc-cfp-jopp-only/aarch64-linux-android-4.9/bin:$PATH

make exynos8890-herolte_defconfig
make menuconfig
make -j5
