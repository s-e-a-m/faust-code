# faust-code

Faust Code - Base

## MacOS

Install [Homebrew](https://brew.sh)

`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

or update it by

`brew update && brew upgrade`

Getting the Faust source code

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

Install [MSYS2](http://www.msys2.org)

Getting the Faust source code

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
