export ZSH=$HOME/.oh-my-zsh
DISABLE_UPDATE_PROMPT="true"

plugins=(autojump command-not-found colored-man-pages colorize docker extract git httpie sudo thefuck $plugins)

# Operation system specific settings.
case "$(uname -s)" in

    Darwin)
        plugins+=(osx brew)
        ;;

    Linux*)
        plugins+=(systemd)
        ;;

    CYGWIN*|MINGW32*|MSYS*)
        ;;

    *)
        ;;

esac

source $ZSH/oh-my-zsh.sh