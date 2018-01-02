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
./.env/setup.sh
```

installing to `~/.env` is required, all configs assume this to be the location of scripts and various media.

### configuration

some configuration is necessary, since hardware and setups differ. any machine specific configuration can go in a file located at `~/.config/bashrc`.

this file should contain the following environment variables:

```
export SETUP=laptop
export WIRELESS_INTERFACE=wlan0
export WIRED_INTERFACE=eth0
```
