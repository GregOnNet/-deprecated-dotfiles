function ui {
  "/cygdrive/c/Program Files (x86)/GitExtensions/GitExtensions.exe" $@ &
}

function st {
  "/cygdrive/c/Program Files/Sublime Text 3/sublime_text.exe" `cygpath $1` &
}

function mkcd {
  mkdir -p "$@"
  cd "$@"
}

function up {
  cd ..
}

function back {
  cd -
}

function workOnIssue() {

  PREFIX=$1;

  BOLD_WHITE="\e[1;37m"
  RESET_COLOR="\033[0m"

  if [ -n "$PREFIX" ]; then
    # Saving a commit message prefix
    # in the global .gitconfig.
    # It will be read by the hook to set the prefix
    # in front of the commit message.
    `git config --global prefix.commitMessage `"$PREFIX"`
    printf "\r\n${BOLD_WHITE}Prefixing enabled${RESET_COLOR}\r\n";
    printf "Make sure enabling the prepare-commit-msg hook\r\n"
    printf "in your repsitory: http://git.io/vITez\r\n\r\n"
  else
    # If no prefix is passed the prefix will be
    # removed from the global .gitconfig.
    `git config --global prefix.commitMessage ""`
    printf "\r\n${BOLD_WHITE}Prefixing disabled${RESET_COLOR}\r\n\r\n";
  fi

}
