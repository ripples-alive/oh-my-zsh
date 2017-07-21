ZSH_THEME="ripples"
DISABLE_UPDATE_PROMPT="true"
HIST_STAMPS="mm/dd/yyyy"

# As plugins is loaded before custom configurations, it is no use to set plugins here.
# plugins=(git svn autojump osx brew composer docker git-flow gitignore npm pip python sudo laravel5 jsontools adb urlencode ubuntu urltools jenv)

export EDITOR='vim'
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH
export MANPATH=/usr/local/man:$MANPATH

# Add python startup script.
touch $HOME/.pystartup
export PYTHONSTARTUP=$HOME/.pystartup

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
