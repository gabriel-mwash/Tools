# Use powerline
USE_POWERLINE="true"
# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

# default editor
export EDITOR=/usr/bin/vim

# ALIASES
alias vi="vim"
alias cl="clear"
alias nv="nvim"
alias py="python"
alias so="source"
alias tm="tmux"

ZSH_THEME="arrow"
