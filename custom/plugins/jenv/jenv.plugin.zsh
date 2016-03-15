export PATH=$HOME/.jenv/bin:$PATH
if [ $commands[jenv] ]; then
    eval "$(jenv init -)"
fi
