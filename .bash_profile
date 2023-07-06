__git_ps1 ()
{
    local b="$(git symbolic-ref HEAD 2>/dev/null)";
    if [ -n "$b" ]; then
        printf " (%s)" "${b##refs/heads/}";
    fi
}

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# use with KevinBerry.terminal
PS1="\e[92m\W\e[96m\$(__git_ps1)\e[0m$ "

# experiment with presentation
#PS1="\e[34m\W\e[35m\$(__git_ps1)\e[0m$ "

# use to test hostname
#PS1="\h$"

# git prompt (no color)
#PS1="\W\$(__git_ps1)$ "

alias la='ls -al'

if [ -z "$SSH_AUTH_SOCK" ] ; then
    eval `ssh-agent -s`
    ssh-add
fi


# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Ruby Version Manager
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Andriod SDK
export ANDROID_SDK=$HOME/Library/Android/sdk
export PATH=$HOME/Library/Android/sdk/platform-tools:$PATH

# Rust
. "$HOME/.cargo/env"

