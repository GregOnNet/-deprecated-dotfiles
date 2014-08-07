# .dotfiles

This repository contains `configurations` && `additional functions` extending my cygwin-bash.

Do not hesitate to contact me if you have problems with the setup. Fresh new ideas improving the experience of my .dotfiles are welcome as well.

## Look & Feel

I use bash as shell and generated a prompt showing you additional information if you are in a git repository.

![bash look&feel](http://www.woiwode.info/blog/wp-content/uploads/2014/05/bash.png "bash look&feel")

![bash look&feel](http://www.woiwode.info/blog/wp-content/uploads/2014/05/untracked.png "untracked content")

![bash look&feel](http://www.woiwode.info/blog/wp-content/uploads/2014/05/staged.png "staged content")

![bash look&feel](http://www.woiwode.info/blog/wp-content/uploads/2014/05/modified.png "modified content")

## Prerequisites (recommended)

The configuration shown here matches to certain tools you may install if you want to get this stuff running.

- [Cygwin](http://cygwin.com/)
- [Sublime Text 3](http://www.sublimetext.com/3)
- [Diffmerge](https://sourcegear.com/diffmerge/)
- [Git Extensions](https://code.google.com/p/gitextensions/)

### installed cygwin-packages

- git, git-completion
- ruby
- openssh
- dos2unix

## Installation

<pre>
  # ~ git clone https://github.com/GregOnNet/dotfiles.git .
</pre>

1. Clone this repository direct into your **home directory**. 
2. Well, ok. This is too easy. :smile: 
3. Assuming that you have other stuff in your home directory, it is better to clone this reposotory into a own folder. 
4. But than just copy the content (including  the `.git/`-Directory!) into your home directory. 
   - It is easy but also functional.
   - Besides you have a versioning over your configuration-files.
5. Finally run `cygwin/bin/sh.exe --login -i`

## Structure

The dotfiles are splitted in `aliases` and `bash`-related configurations. They are all loaded by the `.profile`-file.

<pre>
.
- aliases/
  | core.sh
  | git.sh
- bash/
  | functions.sh
  | git-prompt.sh
  | prompt.sh 
  | umlaute.sh
- .gitconfig
- .profile
</pre>

## aliases/

### core.sh

| alias         | description                             |
| ------------- |:----------------------------------------|
| `grep`        | colored grep                            |
| `ls`          | colored directory listing               |
| `la`          | shows hidden files                      |

### git.sh

This file contains the shortcuts of git commands I use.

#### regular commands

| alias         | description                                                                                                     |
| ------------- |:----------------------------------------------------------------------------------------------------------------|
| `a`           | `git add`                                                                                                       |
| `aa`          | `git add --all`                                                                                                 |
| `b`           | `git branch`                                                                                                    |
| `c`           | `git commit --message`                                                                                          |
| `ca`          | `git commit --amend -C HEAD`                                                                         |
| `co`          | `git checkout`                                                                                                  |
| `d`           | `git diff`                                                                                                      |
| `l`           | nice git log                                                                                                    |
| `m`           | `git merge`                                                                                                     |
| `mt`          | `git mergetool`                                                                                                 |
| `preview`     | displays diff between index and local history (commited stuff)                                                  |
| `r`           | `git rm`                                                                                                        |
| `reword`      | corrects last commit message                                                                                    |
| `review`      | displays changes of last commit                                                                                 |
| `s`           | `git status`                                                                                                    |
| `some`        | `some [1-99]` creates random commits for testing (!requires [git-some](https://github.com/GROSSWEBER/git-some)) |

#### quick-git

quick-git is a ruby gem called [git-shizzle](https://github.com/agross/git_shizzle). It contains really confortable console helpers to deal more granular with new or manipulated files.

| alias         | description                                  |
| ------------- |:---------------------------------------------|
| `qn`          | track files by index or range                |
| `qa`          | stage files by index or range                |
| `qap`         | stage patches by index or range              |
| `qd`          | diff files by index or range                 |
| `qdc`         | diff cached (staged) files by index or range |
| `qc`          | checkout files by index or range             |
| `qu`          | unstage files by index or range              |

If you are sitting behind a **Proxy-Server** (like me) then you may add the argument `--http-proxy` to get [git-shizzle](https://github.com/agross/git_shizzle) installed. The system variable `Http_Proxy` was not considered in my cygwin-environment. 

<pre>
  gem install git-shizzle --http-proxy [type-your-proxy-server:port]  
</pre>

## bash/

### functions.sh

This file contains additional functions for the bash.

| function      | description                                                                                 |
| ------------- |:--------------------------------------------------------------------------------------------|
| `ui`          | opens current repository in [Git Extensions](https://code.google.com/p/gitextensions/)      |
| `up`          | gets you to the parent directory                                                            |
| `st <file>`   | opens [Sublime Text 3](http://www.sublimetext.com/3)                                        |
| `mkcd`        | creates a directory and navigates into it                                                   |
| `back`        | navigates back in the directory history                                                     |

### git-prompt.sh
Provides __git_PS1 providing information about the current branch. This enables prompt.sh to display additional information about your repository.

### prompt.sh

This file configures the bash to display the current time, directory and the active branch of your git repository.

<pre>
  # Sample

  23:20:52 devel master$
</pre>

### umlaute.sh

This file configures the bash to display *ä, ö, ü*.

## .gitconfig

### [color.*]

The defined colors help to distinguish between new, modified and deleted files.

### [core.editor]

I configured Sublime 3 as standard text editor handling more complex git operations.

### [diff] & [merge]

[Diffmerge](https://sourcegear.com/diffmerge/) is configured as diff- and mergetool.

## Nice to know - cygwins fstab

@agross has shown me a really nice feature of cygwin. You can find a file called `fstab` in  `/cygwin/etc/`. There you can define shortcuts for preferred directories you use most.

<pre>
  # /cygwin/etc/fstab
  
  ...
  Z:/development /devel ntfs binary, posix=0, noacl 0 0
</pre>

The example above shows that `/devel` now points to the directory `Z:/development/`.
Now you can `cd /devel` to open up `Z:/development/`.