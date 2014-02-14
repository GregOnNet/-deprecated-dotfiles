function ui {
  "/cygdrive/c/Program Files (x86)/GitExtensions/GitExtensions.exe" $@ &	
}

function st {
  "/cygdrive/c/Program Files/Sublime Text 3/sublime_text.exe" `cygpath $1` &
}

function up {
  cd ..
}

function back {
  cd -
}