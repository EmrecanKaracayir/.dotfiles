set fish_greeting ""

begin # NVM INIT #
    # nvm install #
    if test -e ".nvmrc"
        nvm install
    end

    # node_modules/.bin to PATH #
    if test -e "$PWD/node_modules/.bin"
        set -g __node_binpath "$PWD/node_modules/.bin"
        set -x PATH $PATH $__node_binpath
        echo "Added $__node_binpath to PATH"
    else
        set -q __node_binpath
        and set -l index (contains -i -- $__node_binpath $PATH)
        and set -e PATH[$index]
        and set -e __node_binpath
    end
end # NVM INIT #

if status is-interactive
    starship init fish | source
end
