# env

my linux setup. at home, this is arch. a work in progress

* wm: i3
* bar: polybar
* lock: xautolock, i3lock
* composite manager: compton
* terminal: urxvt
* app launcher: rofi
* image viewer: feh
* pdf viewer: zathura

### installation

```shell
cd ~
git clone https://github.com/avanpo/.env.git
./.env/setup.sh
```

installing to `~/.env` is required, all configs assume this to be the location of scripts and various media.

### configuration

all configuration custom to a machine should go into a file located at `~/.config/bashrc`. this file is sourced at the end of `~/.bashrc`.

at minimum, this file should contain the following environment variable:

```
export SETUP=laptop
```

optional vars:

```
# for the polybar weather script
export OPENWEATHERMAP_LOCATION=city
export OPENWEATHERMAP_API_KEY=key
```
