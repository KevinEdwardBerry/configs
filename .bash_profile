__git_ps1 ()
{
    local b="$(git symbolic-ref HEAD 2>/dev/null)";
    if [ -n "$b" ]; then
        printf " (%s)" "${b##refs/heads/}";
    fi
}

# use with KevinBerry.terminal
PS1="\e[92m\W\e[96m\$(__git_ps1)\e[0m$ "

# experiment with presentation
#PS1="\e[34m\W\e[35m\$(__git_ps1)\e[0m$ "

# use to test hostname
#PS1="\h$"

# git prompt (no color)
#PS1="\W\$(__git_ps1)$ "

alias la='ls -al'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
