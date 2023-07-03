set fish_greeting ""

if status is-interactive
  sleep 0.3
  starship init fish | source

  # nvm install #
  if test -e ".nvmrc"
    nvm install > /dev/null
  end
  ###############

  # node_modules/.bin to PATH #
  if test -e "$PWD/node_modules/.bin"
    set -g __node_binpath "$PWD/node_modules/.bin"
    set -x PATH $PATH $__node_binpath
  else
    set -q __node_binpath
      and set -l index (contains -i -- $__node_binpath $PATH)
      and set -e PATH[$index]
      and set -e __node_binpath
  end
  #############################
end
