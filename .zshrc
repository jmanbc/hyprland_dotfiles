colorscript -r

zstyle ':omz:update' mode auto      # update automatically without asking

autoload -U promptinit; promptinit
export PWD=/home/$USER
export OLDPWD=/home/$USER
export BAT_THEME="Nord"

export KEYTIMEOUT=1
export ZSH=$HOME/.oh-my-zsh
export PATH="$HOME/.emacs.d/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.config/rofi/scripts:$PATH"
export PATH="$HOME/.config/emacs/bin:$PATH"

# Load Version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats "%b"

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=" ✘"
ZSH_THEME_GIT_PROMPT_CLEAN=" ✔"
ZSH_THEME_GIT_PROMPT_ADDED=" ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED=" ✹"
ZSH_THEME_GIT_PROMPT_DELETED=" ✖"
ZSH_THEME_GIT_PROMPT_RENAMED=" ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED=" ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED=" ✭"

setopt prompt_subst
PROMPT="%F{011}%~ %F{060}%n@%m%F{010}"$'\n'" ❯ %f"
RPROMPT='%F{060}${vcs_info_msg_0_}`git_prompt_status`'

source $ZSH/oh-my-zsh.sh
export EDITOR=emacsclient
export VISUAL=emacsclient
export TERMINAL=/usr/bin/kitty
export _JAVA_AWT_WM_NONREPARENTING=1
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=lcd -Dswing.aatext=true"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

export CM_SELECTIONS="clipboard"
export CM_MAX_CLIPS=10

HISTSIZE=50000
SAVEHIST=50000
HISTFILE=~/.zsh_history
HIST_STAMPS="%d/%m/%y %T"
compinit
_comp_options+=(globdots) # lets you tab complete hidden files by default

plugins=(
	git
	npm
	zsh-autosuggestions
	sudo
	zsh-syntax-highlighting
  copypath
  copyfile
  copybuffer
  dirhistory
  history
  vi-mode
	)

source $ZSH/oh-my-zsh.sh

[[ -f ~/.zshrc-personal ]] && . ~/.zshrc-personal

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=60'

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"
