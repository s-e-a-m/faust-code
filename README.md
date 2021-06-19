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
### Ubuntu, Debian, Raspberry

Create a folder called _grame_, this will be the place where you'll download the Faust source code
```
mkdir grame
```
Getting the [Faust source code](https://github.com/grame-cncm/faust)
```
cd grame
git clone --recurse-submodules -v https://github.com/grame-cncm/faust.git
```
#### Installing Faust on your machine
```
sudo apt-get update
sudo apt-get install ninja-build gcc gdb clang pkg-config cmake make
cd faust
make
sudo make install
```

#### Check if Faust has been compiled

After the installation you should try `faust2` command on your favourite terminal, by tabbing you should be able to see all the _architectures_ available for your machine.

If the step above doesn't have any effects, Faust has not been installed.

If the step above is successful you should a similiar list on your terminal:
```
faust2alqt               faust2netjackconsole
faust2alsa               faust2netjackqt
faust2alsaconsole        faust2nodejs
faust2android            faust2octave
faust2androidunity       faust2osxiosunity
--More--
```

#### Compile GUI apps

You should now be able to compile apps, you should use either:
- gtk
- qt

Combined with different audio manager such as _alsa_ or _jack_.

These are two different libraries to compile GUI apps on UNIX platforms.

##### Installing and linking _Qt_, _gtk_, _jack_ and _alsa_

```
sudo apt-get update
sudo apt-get install alsa gtk-+2.0 libgtk2.0-dev libasound2-dev qt5-default
sudo apt-get install -y jackd
```

##### Compile your first GUI

You should now be able to compile GUI apps with one of the libraries just installed, try:
```
faust2jack -double your_awesome_project.dsp
```

Run the compiled executable:
```
./your_awesome_project
```

### Linux Mint

Getting the [Faust source code](https://github.com/grame-cncm/faust)
```
git clone --recurse-submodules -v https://github.com/grame-cncm/faust.git
```
Installing Faust on your machine
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
