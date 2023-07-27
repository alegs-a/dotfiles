# Random quote, read to you by a cow
fortune | cowsay -f bud-frogs

# Customise shell prompt including colours
autoload -U colors && colors
PROMPT="%B%F{green}%n%f@%F{1}%m%f %b%f%2~ %# %b%f"

export TERM=xterm-256color

# Set default editor to nVim
EDITOR="nvim"
VISUAL=$EDITOR
GIT_EDITOR=$EDITOR

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

setopt autocd

# Tab completion
autoload -Uz compinit && compinit
# zstyle ':completion:*' menu select 
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'


# Funny things
alias starwars="curl https://asciitv.fr"
eval "$(rbenv init - zsh)"
