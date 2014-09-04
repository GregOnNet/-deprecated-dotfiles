# regular git commands
  alias a='git add '
  alias aa='git add --all '
  alias b='git branch '
  alias c='git commit --message '
  alias ca='git commit --amend -C HEAD'
  alias co='git checkout '
  alias d='git diff '
  alias l='git log --graph --pretty=oneline --abbrev-commit --decorate --branches --all'
  alias m='git merge '
  alias mt='git mergetool'
  alias preview='git diff --cached'
  alias r='git rm '
  alias reword='git commit --amend -m'
  alias review='git log --oneline -1 --patch'
  alias s='git status'

  alias ignore='git update-index --assume-unchanged'
  alias ignored="git ls-files -v | env --unset=GREP_OPTIONS grep --perl-regexp '^[a-z]\s' | cut --delimiter=' ' --fields=2-"
  alias unignore='git update-index --no-assume-unchanged'

# quick-git commands
  alias qn='quick-git track'
  alias qa='quick-git stage'
  alias qap='quick-git stage_with_patch'
  alias qd='quick-git diff'
  alias qdc='quick-git diff_cached'
  alias qc='quick-git checkout'
  alias qu='quick-git unstage'

# git-some
  alias some='/home/Gregor/aliases/git-packages/git-some/git-some.sh' 