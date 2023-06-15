Prerequisites:
===============

* ARM Toolchain: https://developer.arm.com/downloads/-/arm-gnu-toolchain-downloads
* Make
* SLC-cli
    1. Download `wget https://www.silabs.com/documents/login/software/slc_cli_linux.zip`
    2. Unzip file `unzip slc_cli_linux.zip`
    3. Change directory and install requirements `cd slc_cli && python3 -m pip install -r requirements` (venv optional)
    4. Add to path `export PATH=$PATH:$(pwd)`


Init :
==========

* Linux:
    1. `git submodule update --init --recursive --depth 1`
    2. `cd ..`
    3. Configure project `slc configuration --sdk gecko_sdk --gcc-toolchain=/path/to/your/toolchain`
    4. Trust sdk `slc signature trust --sdk gecko_sdk`
    5. Generate `slc generate gecko_test.slc -o makefile`
    6. `make all`



* Windows:
    1. `git submodule update --init --recursive --depth 1`
    2. Download slc-cli `wget https://www.silabs.com/documents/login/software/slc_cli_windows.zip`
    3. Unzip file
    4. Change directory and install requirements
        `cd slc_cli`
        ` python3 -m pip install -r requirements` (venv optional)
    5. Set Path `SET PATH=%PATH%;%cd%`
    6. `cd ..`
    3. Configure project `slc configuration --sdk gecko_sdk --gcc-toolchain=/path/to/your/toolchain`
    4. Trust sdk `slc signature trust --sdk gecko_sdk`
    5. Generate `slc generate gecko_test.slc -o makefile`
    6. `make all`
