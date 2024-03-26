# Random quote, read to you by a cow
fortune | cowsay -f bud-frogs | lolcat

# Customise shell prompt including colours
autoload -U colors && colors
PROMPT="%B%F{green}%n%f@%F{1}%m%f %b%f%2~ %# %b%f"

export TERM=xterm-256color

# Set default editor to nVim
export EDITOR="nvim"
export VISUAL=$EDITOR
export GIT_EDITOR=$EDITOR

alias ls="ls --color=auto"
alias la="ls -lah" # -l for more info, -a for all (hidden) entries, -h for human-readable size
alias mp="multipass"
alias ga="git add"
alias gaa="git add -a"
alias gc="git commit"
alias gs="git status"
alias gp="git push"

alias v="nvim"

alias p3="python3"
alias venvnew="python3 -m venv"
alias venvactivate=""

alias avadakedavra="kill -9"

# For uni things
alias bbfsremount="diskutil unmount force ~/Documents/Uni/blackboard && bbfs"
alias bbfs="bbfs ~/Documents/Uni/blackboard"
alias shifoo="bbfs && open ~/Documents/Uni/blackboard/CSSE2002/Assessment/Shifoo.webloc"
alias moss="ssh s4802359@moss.labs.eait.uq.edu.au"

setopt autocd

# Tab completion
autoload -Uz compinit && compinit
# zstyle ':completion:*' menu select 
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'


# Funny things
alias starwars="nc towel.blinkenlights.nl 23"
eval "$(rbenv init - zsh)"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

[ -f "/Users/alex/.ghcup/env" ] && source "/Users/alex/.ghcup/env" # ghcup-env
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/alex/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/alex/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/alex/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/alex/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

