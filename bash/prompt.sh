function __rvm_prompt {
  if hash rvm-prompt 2>&- ; then
    echo " `rvm-prompt i v g s`"
  fi
}


function __is_normal_dir {
  if [[ $( git rev-parse --git-dir 2>&1 ) == 'fatal: Not a git repository'* ]]; then
    echo 'it is'
    return 1
  else
    return 0
  fi
}

function __git_dirty {
  
  [[ $(__is_normal_dir) ]] && return
  
  local dirty
  local repo=$(git status)

  [[ $repo == *'Untracked'* ]] && dirty+="^"
  [[ $repo == *'modified:'* ]] && dirty+="?"

  [[ $repo == *'new file:'* ||
     $repo == *'Changes to be committed'* ]] && dirty+="+"
     
  echo $dirty
}

function __git_branch {
  __git_ps1 " @%s"
}

# Only show username@server over SSH.
function __name_and_server {
  if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
    echo "`whoami`@`hostname -s` "
  fi
}

function __prompt_terminator {
  if [[ $(__is_normal_dir) ]]; then
    echo "$"
  else
    echo "±"
  fi
}

bash_prompt() {

  # regular colors
  local K="\[\033[0;30m\]"    # black
  local R="\[\033[0;31m\]"    # red
  local G="\[\033[0;32m\]"    # green
  local Y="\[\033[0;33m\]"    # yellow
  local B="\[\033[0;34m\]"    # blue
  local M="\[\033[0;35m\]"    # magenta
  local C="\[\033[0;36m\]"    # cyan
  local W="\[\033[0;37m\]"    # white

  # emphasized (bolded) colors
  local BK="\[\033[1;30m\]"
  local BR="\[\033[1;31m\]"
  local BG="\[\033[1;32m\]"
  local BY="\[\033[1;33m\]"
  local BB="\[\033[1;34m\]"
  local BM="\[\033[1;35m\]"
  local BC="\[\033[1;36m\]"
  local BW="\[\033[1;37m\]"

  # reset
  local RESET="\[\033[0;37m\]\r\n\$(__prompt_terminator)"

  PS1="\t $BY\$(__name_and_server)$Y\W$G\$(__rvm_prompt)$G\$(__git_branch)$BR\$(__git_dirty)$RESET "
}

bash_prompt
unset bash_prompt
