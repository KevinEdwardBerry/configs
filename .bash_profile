__git_ps1 ()
{
    local b="$(git symbolic-ref HEAD 2>/dev/null)";
    if [ -n "$b" ]; then
        printf " (%s)" "${b##refs/heads/}";
    fi
}

PS1="\W\$(__git_ps1)$ "
#PS1="\h$"
#export PS1="\W$(__git_ps1 " (%s)")$ "
alias la='ls -al'
alias gcc='gcc-4.9'
alias g++='g++-4.9'
alias c++='c++-4.9'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
