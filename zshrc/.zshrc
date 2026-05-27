# Prompt
PS1='%F{33}s%f%F{39}n%f%F{38}a%f%F{44}u%f%F{50}:%~%f '
# PS1='%F{33}s%f%F{39}n%f%F{38}a%f%F{44}u%f%F{50}:%1~%f '

# History settings
HISTFILE=~/.zsh_history     # where history will be saved
HISTSIZE=10000              # number of commands kept in memory
SAVEHIST=10000              # number of commands saved to HISTFILE

setopt append_history       # append instead of overwriting
setopt share_history        # share history across all sessions
setopt inc_append_history   # write immediately to history file
setopt hist_ignore_dups     # ignore duplicate entries
setopt hist_ignore_space    # ignore commands starting with a space
unsetopt EXTENDED_HISTORY

# fzf history search
function fh() {
    eval $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//')
}

# yazi file manager
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}
# Aliases
alias py='python3'
alias cl='clear'
alias spd="sudo pacman -S"
alias td="vim ~/personal/snau.md"

# Keybindings
bindkey -v
bindkey -s '^r' 'fh\n'

