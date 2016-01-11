# regular commands
  alias a='git add '
  alias aa='git add --all '
  alias aac='git add --all && git commit -m '
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
  alias rec='git rebase --continue'
  alias reword='git commit --amend -m'
  alias review='git log --oneline -1 --patch'
  alias s='git status'
  alias tidy='git clean -f'
  alias wip='git reset --hard'

# handle ignored files
  alias ignore='git update-index --assume-unchanged'
  alias ignored="git ls-files -v | env --unset=GREP_OPTIONS grep --perl-regexp '^[a-z]\s' | cut --delimiter=' ' --fields=2-"
  alias unignore='git update-index --no-assume-unchanged'

# rapid-git commands
  alias qn='rapid track'
  alias qa='rapid stage'
  alias qu='rapid unstage'
  alias rdr='rapid drop'
  alias qr='rapid remove'
  alias qd='rapid diff'
  alias qco='rapid checkout'
  alias qm='rapid merge'
  alias qre='rapid rebase'
  alias qb='rapid branch'

# git-some
  alias some='/home/Gregor/aliases/git-packages/git-some/git-some.sh'

# prefix commit with custom message
  alias woi='workOnIssue '
