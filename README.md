# env

my linux setup. at home, this is arch. a work in progress

* wm: i3
* terminal: urxvt
* bar: polybar
* lock: i3lock
* app switcher: rofi

other tools used:

feh (bg image), compton (composite manager), zathura (pdf viewer), imagemagick (cli image tooling), scrot (screenshots)

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
