# faust-code

All Faust Code - Base

## How to Install Faust

### MacOS

Install [Xcode](https://apps.apple.com/it/app/xcode/id497799835?mt=12)

You can run the `faustmacos.sh` bash script to install or update **Faust** in a single command.

It will install *Homebrew* with *cmake*, *pkg-config*, and *qt* and *Faust*.

Otherwise you can do it manually by following instruction below.

Install [Homebrew](https://brew.sh)

`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

or update it by

`brew update && brew upgrade`

Install cmake by

`brew install cmake`

Install pkg-config by

`brew install pkgconfig`

Install qt by

`brew install qt`

Install libsndfile by

`brew install libsndfile`

`echo 'export PATH="/usr/local/opt/qt/bin:$PATH"' >> ~/.bash_profile`

Getting the [Faust source code](https://github.com/grame-cncm/faust)

```
git clone --recurse-submodules -v https://github.com/grame-cncm/faust.git
```

Install Faust by

```
cd faust
make
sudo make install
```

#### Mojave permission issue

```
sudo chown -R $(whoami) $(brew --prefix)/*
```

### Windows

Enable Developer Mode on Windows [Developer Mode](https://www.windowscentral.com/how-install-bash-shell-command-line-windows-10)

Install [Git](https://desktop.github.com)

Install [MSYS2](http://www.msys2.org)

or update it by

```
pacman -Syu
```

If needed, close MSYS2, run it again from Start menu. Update the rest with:

```
pacman -Su
```

Getting the [Faust source code](https://github.com/grame-cncm/faust)

```
git clone --recurse-submodules -v https://github.com/grame-cncm/faust.git
```

Install Faust by

```
cd faust
make
sudo make install
```

### Linux Mint

```
apt install ninja-build gcc gdb clang
make
sudo make install
```

### To update Faust, inside faust repo

```
git pull --recurse-submodules -v
make
sudo make install
```

## Contributing

New repo for each work named `fcYYYYsnwn`

`git submodule add https://github.com/…`
