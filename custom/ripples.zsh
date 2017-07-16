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

        alias timeout=gtimeout
        alias p=proxychains4

        # toggle iTerm Dock icon
        # add this to your .bash_profile or .zshrc
        function toggle() {
            pb='/usr/libexec/PlistBuddy'
            iTerm="/Applications/$@.app/Contents/Info.plist"

            echo "Do you wish to hide $@ in Dock?"
            select ync in "Hide" "Show" "Cancel"; do
                case $ync in
                    'Hide' )
                        $pb -c "Add :LSUIElement bool true" $iTerm
                        echo "relaunch $@ to take effectives"
                        break
                        ;;
                    'Show' )
                        $pb -c "Delete :LSUIElement" $iTerm
                        echo "run killall '$@' to exit, and then relaunch it"
                        break
                        ;;
                'Cancel' )
                    break
                    ;;
                esac
            done
        }

        ;;

    Linux*)

        alias p=proxychains
        alias sysuser="systemctl --user"

        function at() {
            if [[ "$1" =~ ^[0-9]+$ ]]
            then
                sudo gdb attach $1
            else
                sudo gdb attach `pidof $1`
            fi
        }

        ;;

    CYGWIN*|MINGW32*|MSYS*)
        ;;

    *)
        ;;

esac
