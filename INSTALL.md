### 1. Install MWCC compiler

The build system requires the use of various versions of the Metrowerk C Compiler versions to compile matching files. We cannot distribute the correct compiler here so join the PRET discord and download the pinned mwccarm.zip zip in #pokediamond and extract it to tools/. Run each of the executables so they ask for a license.dat and provide the one in the rar (it may also ask for it when compiling). This only needs to be done once.

In the future, a GCC option will be available so MWCC is not required to build, however it is required for a matching ROM.

### 2. Install Nitro SDK

As with the compiler, the Nitro SDK is proprietary and cannot be distributed here. Download the "NitroSDK-3\_2-060901.7z" file pinned in the PRET discord. Extract and copy the contents of tools/bin from the Nitro SDK to tools/bin in your pokediamond clone. Finally, copy include/nitro/specfiles/ARM7-TS.lcf.template into the arm7 subdirectory, and include/nitro/specfiles/ARM9-TS.lcf.template into the arm9 subdirectory. In the ARM9-TS.lcf.template, find the line `OBJECT(NitroSpMain,*)` and comment it out or delete it.

### 3. Dependencies

#### Linux

Building the ROM requires the following packages:

* make
* git
* build-essentials (build-essential on Ubuntu)
* binutils-arm-none-eabi
* wine (to run the mwcc executables)
* libpng-devel (libpng-dev on Ubuntu)

NOTE: If you are using Arch/Manjaro or Void you will only need base-devel instead of build-essentials or make or git. You will still need wine.

Currently WSL2 has an issue with mwldarm not being able to locate it's executable. Please use WSL1 or another build environment to mitigate this issue until a solution is found.

#### Windows

Before following the respective guides, please install devkitARM and ensure the DEVKITPRO and DEVKITARM variables are added to bashrc such that:

Msys2:
export DEVKITPRO=C:/devkitPro
export DEVKITARM=${DEVKITPRO}/devkitARM

Cygwin:
export DEVKITPRO=/cygdrive/c/devkitPro
export DEVKITARM=${DEVKITPRO}/devkitARM

You will still require the following packages:

* make
* git
* build-essentials
* libpng-devel

Install them using either the Cygwin package manager or using pacman on Msys2.

### 4. Build ROM

Run `make` to build the ROM. The ROM will be output as `build/eoo.nds`.

Windows Users:

If you get an error in saving configuration settings when specifying the license file, you need to add a system environment variable called LM_LICENSE_FILE and point it to the license.dat file. Alternatively, run mwccarm.exe from an Administrator command prompt, PowerShell, or WSL session.
