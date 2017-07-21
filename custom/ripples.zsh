ZSH_THEME="ripples"
DISABLE_UPDATE_PROMPT="true"

# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# As plugins is loaded before custom configurations, it is no use to set plugins here.
# plugins=()

export EDITOR='vim'
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH
export MANPATH=/usr/local/man:$MANPATH

# Set go path
export GOPATH="${HOME}/.go"
# Set python startup script.
test -e "${HOME}/.pystartup" && export PYTHONSTARTUP="$HOME/.pystartup"

# Shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

alias dockviz="docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock nate/dockviz"

# Operation system specific settings.
case "$(uname -s)" in

    Darwin)
        source $ZSH_CUSTOM/specs/mac.zsh
        ;;

    Linux*)
        source $ZSH_CUSTOM/specs/linux.zsh
        ;;

    CYGWIN*|MINGW32*|MSYS*)
        ;;

    *)
        ;;

esac
