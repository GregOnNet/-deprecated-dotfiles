# Dotfiles

This repository contains `configurations` && `additional functions` extending my cygwin-bash.

## Look & Feel

I use bash as shell and generated a prompt showing you additional information if you are in a git repository.

![bash look&feel](http://www.woiwode.info/blog/wp-content/uploads/2014/02/bash-lookfeel.png "bash look&feel")

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

1. Clone this repository direct into your **home directory**.

<pre>
  # ~ git clone https://github.com/GregOnNet/dotfiles.git .
</pre>

2. Run /cygwin/bin/sh.exe --login-i
3. Have fun.

## Structure

The dotfiles are splitted in `bash` and `git` related configurations. They are all loaded by the `.profile`-file.

<pre>
.
- bash/
  | functions.sh
  | paths.sh
  | prompt.sh 
  | umlaute.sh
- git/
  | aliases.sh
- .gitconfig
- .profile
</pre>

## bash/

### functions.sh

This file contains additional functions for the bash.

| function      | description                             |
| ------------- |:----------------------------------------|
| `ui`          | opens current repository in [Git Extensions](https://code.google.com/p/gitextensions/)      |
| `up`          | gets you to the parent directory        |
| `st <file>`   | opens [Sublime Text 3](http://www.sublimetext.com/3)                                        |
| `back`        | navigates back in the directory history |

### paths.sh

In this file I set and export the environment variable `CDPATH` to create shortcuts to direcetories I often use.

<pre>
  # paths.sh
  
  cdpath=( /devel )
  export CDPATH
</pre>

Now *bash* is aware of `/devel` but until now this path leads to nowhere.
To link `/devel` to a desired directory you have to edit the file `fstab` located in `/cygwin/etc`.

<pre>
  # /cygwin/etc/fstab
  
  ...
  Z:/development /devel ntfs binary, posix=0, noacl 0 0
</pre>

The example above shows that `/devel` now points to the directory `Z:/development/`.

### prompt.sh

This file configures the bash to display the current time, directory and the active   branch of your git repository.

<pre>
  # Sample

  23:20:52 devel master$
</pre>

### umlaute.sh

This file configures the bash to display *ä, ö, ü*.

## git/

### aliases.sh

This file contains the shortcuts of git commands I use.

#### regular commands

| alias         | description                             |
| ------------- |:----------------------------------------|
| `a`           | `git add`                               |
| `aa`          | `git add --all`                         |
| `b`           | `git branch`                            |
| `c`           | `git commit --message`                  |
| `ca`          | `git add --all && git commit --message` |
| `co`          | `git checkout`                          |
| `d`           | `git diff`                              |
| `m`           | `git merge`                             |
| `r`           | `git rm`                                |
| `s`           | `git status`                            |
| `reword`      | corrects last commit message            |
| `l`           | nice git log                            |

#### quick-git

quick-git is a rub gem called [git-shizzle](https://github.com/agross/git_shizzle). It contains really confortable console helpers to deal more granular with new or manipulated files.

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

## .gitconfig

### [color.*]

The defined colors help to distinguish between new, modified and deleted files.

### [core.editor]

I configured Sublime 3 as standard text editor handling more complex git operations.

### [diff] & [merge]

[Diffmerge](https://sourcegear.com/diffmerge/) is configured as diff- and mergetool.