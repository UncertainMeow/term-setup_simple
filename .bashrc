# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

# -----------------------------------
# ADD NEW CONFIGURATIONS BELOW
# -----------------------------------

# Enable color support for ls and add useful aliases
alias ls='eza --icons'
alias ll='eza -lh --icons --grid --group-directories-first'
alias la='eza -lah --icons --grid --group-directories-first'
alias cat='bat'  # Use 'bat' for syntax highlighting in place of 'cat'

# Add color to grep outputs
alias grep='grep --color=auto'

# Navigation shortcuts
alias ..='cd ..'
alias ...='cd ../..'

# Custom aliases for convenience



# Git aliases for convenience
alias gst='git status'
alias gco='git checkout'
alias gp='git push'
alias gl='git log --oneline --graph'

# Starship prompt setup
eval "$(starship init bash)"

# Enable true color support
export COLORTERM=truecolor

# Fancy `man` page colors
man() {
  LESS_TERMCAP_mb=$'\e[1;31m' \
  LESS_TERMCAP_md=$'\e[1;31m' \
  LESS_TERMCAP_me=$'\e[0m' \
  LESS_TERMCAP_se=$'\e[0m' \
  LESS_TERMCAP_so=$'\e[1;44;33m' \
  LESS_TERMCAP_ue=$'\e[0m' \
  LESS_TERMCAP_us=$'\e[1;32m' \
  command man "$@"
}

# Dynamic terminal title
PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'

# Auto-reload bashrc alias
alias reload="source ~/.bashrc && echo 'Bash configuration reloaded!'"

# Run fastfetch on terminal startup (optional)
if command -v fastfetch &> /dev/null; then
    fastfetch
fi

# Include any personal bash configurations if present
if [ -f $HOME/.bashrc-personal ]; then
  source $HOME/.bashrc-personal
fi



# Commented-out potential customizations below

# # Alias to start tmux in a new window (future use)
# alias tn="tmux new -s"

# # Git cleanup
# alias gc="git commit -m"
# alias gpl="git pull origin main"

# # Custom functions (future use)
# function mkcd() { mkdir -p "$1" && cd "$1"; }

# # Customized prompt (once you get comfortable with Starship)
# eval "$(starship init bash)"

# # Uncomment for enhanced directory navigation with `z`
# if command -v z &> /dev/null; then
#     . /usr/share/z/z.sh
# fi

# # Enhanced grep for color
# alias grep="grep --color=auto"

# # Function to search command history
# function hgrep() { history | grep "$1"; }

# # Uncomment for enhanced directory navigation with `z`
# if command -v z &> /dev/null; then
#     . /usr/share/z/z.sh
# fi

# # Enhanced grep for color
# alias grep="grep --color=auto"

# # Function to search command history
# function hgrep() { history | grep "$1"; }


# # Uncomment for enhanced directory navigation with `z`
# if command -v z &> /dev/null; then
#     . /usr/share/z/z.sh
# fi

# # Enhanced grep for color
# alias grep="grep --color=auto"

# # Function to search command history
# function hgrep() { history | grep "$1"; }

