function _pure_prompt_virtualenv --description "Display virtualenv directory"
    if test -n "$VIRTUAL_ENV"
        set virtualenv (basename "$VIRTUAL_ENV")
    else
        set virtualenv (pyenv version | cut -f 1 -d " ")
    end
    set --local virtualenv_color "$pure_color_virtualenv"
    echo "$virtualenv_color$virtualenv"

end
