#--------------------------------
# Base settings
#--------------------------------

fpath=(~/.zsh.d/completion $fpath)

autoload -Uz compinit
compinit -u

autoload -Uz colors
colors

setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups

setopt auto_menu
setopt extended_glob
zstyle ':completion:*:default' menu select=1
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin

setopt interactive_comments
setopt correct

autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs
zstyle ':completion:*:*:cdr:*:*' menu selectction
zstyle ':completion:*' recent-dirs-insert both
zstyle ':chpwd:*' recent-dirs-max 500
zstyle ':chpwd:*' recent-dirs-default true
zstyle ':chpwd:*' recent-dirs-file "${XDG_CACHE_HOME:-$HOME/.cache}/shell/chpwd-recent-dirs"
zstyle ':chpwd:*' recent-dirs-pushd true


#--------------------------------
# History
#--------------------------------

export HISTFILE=~/.zsh_history
export HISTSIZE=1000000
export SAVEHIST=1000000

setopt share_history
setopt hist_ignore_all_dups
setopt hist_reduce_blanks


#--------------------------------
# Key bindings
#--------------------------------

bindkey -e
bindkey "^P" history-beginning-search-backward
bindkey "^N" history-beginning-search-forward


#--------------------------------
# Aliases
#--------------------------------

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'

alias la='ls -a'
alias ll='ls -l'
alias lla='ls -al'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'

# Desktop
alias pbcopy='xsel --clipboard --input'
alias open='xdg-open'

# General commands
alias k='kubectl'
alias bat='batcat'
alias vi='nvim'

# Ruby
alias bi='bundle install'
alias be='bundle exec'


#--------------------------------
# Load local .zsh
#--------------------------------

if [[ -d "$HOME/.zsh.d" ]]; then
  for config in $(ls $HOME/.zsh.d/*.zsh); do
    source $config
  done
fi

