
export PATH=/Library/Frameworks/Python.framework/Versions/3.10/bin:$PATH
export PATH="$HOME/.config/scripts:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH=$HOME/development/flutter/bin:$PATH
export EDITOR=nvim  # Or replace 'nvim' with 'vim', 'nano', etc.

export PATH="/usr/local/mysql/bin:$PATH"

# PS1='%F{33}s%f%F{39}n%f%F{38}a%f%F{44}u%f%F{50}:%1~%f '

# Shows full path
PS1='%F{33}s%f%F{39}n%f%F{38}a%f%F{44}u%f%F{50}:%~%f '

# autamaticcaly attach to tmux session
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
     tmux attach-session 
fi

timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}

# yazi shrotcut
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

alias py='python3'
alias cl='clear'

source <(fzf --zsh)
export PATH=${PATH}:/usr/local/mysql-8.0.39-macos14-arm64/bin


# uninstall yazi
 # brew install yazi ffmpegthumbnailer sevenzip jq poppler 
 # fd ripgrep fzf zoxide imagemagick font-symbols-only-nerd-font


# Basic auto/tab complete:
# autoload -U compinit
# zstyle ':completion:*' menu select
# zmodload zsh/complist
# compinit
# _comp_options+=(globdots)   # Include hidden files.


# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bold,underline"
# bindkey ']^I' autosuggest-accept
# source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh