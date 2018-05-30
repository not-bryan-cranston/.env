if shopt -q login_shell; then
    [[ -f ~/.bashrc ]] && source ~/.bashrc
    [[ -t 0 && ! $DISPLAY && "$XDG_VTNR" -eq 1 ]] && exec startx
else
    exit 1
fi
