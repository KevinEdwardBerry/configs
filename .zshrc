export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Aliases
alias la="ls -al"

# Git auto-completion
autoload -Uz compinit && compinit

# Setup GPG
GPG_TTY=$(tty)
export GPG_TTY

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '(%b)'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST

PS1='%F{green}%1~ %F{cyan}${vcs_info_msg_0_}%F{white}%# '

