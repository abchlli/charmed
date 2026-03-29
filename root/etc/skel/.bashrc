stty -ixon
shopt -s dotglob

# Colors
export COLORTERM="truecolor"
export LS_COLORS='di=01;34:ex=01;92:ln=01;35'

# Prompt
PS1='\[\033[95m\]\u\[\033[0m\]\[\033[97m\]@\[\033[94m\]\h$(
  if git rev-parse --git-dir > /dev/null 2>&1; then
    branch=$(git symbolic-ref --short HEAD 2>/dev/null)
    if [ -n "$branch" ]; then
      echo " \[\033[32m\][$branch]"
    else
      commit=$(git rev-parse --short HEAD 2>/dev/null)
      if [ -n "$commit" ]; then
        echo " \[\033[32m\][detached:$commit]"
      fi
    fi
  fi
) \[\033[0m\]\w \$ ' # '$' for standard users and '#' for root.

# Aliases
alias ls="ls -gh --group-directories-first --color=always" la="ls -A"
alias cp="cp -v" mv="mv -v" rm="rm -v" mkdir="mkdir -v" rmdir="rmdir -v"
alias free="free -h" df="df -h" du="du -h"
alias ip="ip --color"
alias v="$EDITOR"
alias doas="sudo"
alias l="ls" s="ls" sl="ls" lx="ls" a="la" cdd="cd" mdkir="mkdir"
alias grep="rg --hidden" find="fd --hidden"
alias xclip="xclip -selection clipboard" clip="xclip"

bind '"\C-q": edit-and-execute-command'

[[ -z "$TMUX" ]] && [[ "$TERM" != "linux" ]] && exec tmux new -As $USER

