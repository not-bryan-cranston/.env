# env

my linux setup. at home, this is arch. a work in progress

* wm: i3-gaps
* terminal: urxvt
* bar: polybar
* lock: i3lock
* composite manager: compton
* app switcher: rofi
* pdf viewer: zathura
* screenshots: scrot

### installation

```shell
cd ~
git clone https://github.com/avanpo/.env.git
sudo ./.env/setup.sh
```

installing to `~/.env` is required, all configs assume this to be the location of scripts and various media.

### configuration

all configuration custom to a machine should go into a file located at `~/.config/bashrc`.

at minimum, this file should contain the following environment variable:

```
export SETUP=laptop
```
