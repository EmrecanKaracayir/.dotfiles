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

begin # UPDATE #
    function uphub -d "Updates installed packages from different repositories"
        switch $argv[1]
            case --dnf or -d
                set_color green
                echo "Updating dnf packages..."
                set_color normal
                sudo dnf update
            case --flatpak or -f
                set_color green
                echo "Updating flatpak packages..."
                set_color normal
                flatpak update
            case --snap or -s
                set_color green
                echo "Updating snap packages..."
                set_color normal
                sudo snap refresh
            case --all or -a
                set_color green
                echo "Updating dnf packages..."
                set_color normal
                sudo dnf update
                set_color green
                echo "Updating flatpak packages..."
                set_color normal
                sudo flatpak update
                set_color green
                echo "Updating snap packages..."
                set_color normal
                sudo snap refresh
            case "*"
                return 1
        end
    end
    complete -c uphub --no-files -s d -l dnf -d "Updates installed packages from the dnf repositories"
    complete -c uphub --no-files -s f -l flatpak -d "Updates installed packages from the flatpak repositories"
    complete -c uphub --no-files -s s -l snap -d "Updates installed packages from the snap repositories"
    complete -c uphub --no-files -s a -l all -d "Updates installed packages from all repositories"
end # UPDATE #

if status is-interactive
    starship init fish | source
end
