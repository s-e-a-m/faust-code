# faust-code

Faust Code - Base

## MacOS

Install [Homebrew](https://brew.sh)

`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

or update it by

`brew update && brew upgrade`

Install cmake by

`brew install cmake`

Install pkg-config by

`brew install pkgconfig`

Getting the [Faust source code](https://github.com/grame-cncm/faust)

```
git clone https://github.com/grame-cncm/faust.git
cd faust
git submodule update --init
```

Install Faust by

```
make
sudo make install
```

## Windows

Install [Git](https://desktop.github.com)

Install [MSYS2](http://www.msys2.org)

Getting the [Faust source code](https://github.com/grame-cncm/faust)

```
git clone https://github.com/grame-cncm/faust.git
cd faust
git submodule update --init
```

Install Faust by

```
make
sudo make install
```
