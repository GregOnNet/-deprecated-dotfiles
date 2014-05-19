# regular git commands
  alias a='git add '
  alias aa='git add --all '
  alias b='git branch '
  alias c='git commit --message '
  alias ca='git add --all && git commit --message '
  alias co='git checkout '
  alias d='git diff '
  alias l='git log --graph --abbrev-commit --decorate --date=relative --format=format:"%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)"'
  alias m='git merge '
  alias preview='git diff --cached'
  alias r='git rm '
  alias reword='git commit --amend -m'
  alias review='git log --oneline -1 --patch'
  alias s='git status'

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