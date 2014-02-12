# Dotfiles

This repository contains configuration-files and small helpers of my cygwin-bash.

## Prerequisites

The configuration shown here matches to certain tools you may install if you want to get this stuff running.

- [Diffmerge](https://sourcegear.com/diffmerge/)
- [Git Extensions](https://code.google.com/p/gitextensions/)
  - run `ui` when you are in a *repository* to use [Git Extensions](https://code.google.com/p/gitextensions/).

## Structure

<pre>
.
- bash/
  | paths.sh
  | prompt.sh 
  | umlaute.sh
- git/
  | aliases.sh
  | functions.sh
- .gitconfig
- .inputrc
- .profile
</pre>

## Bring it all together - .profile

The `.profile` sources all files which are located in the directories `git/` & `bash/`.

## .gitconfig

## .inputrc

## bash/

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
## git/

### aliases.sh

This file contains the shortcuts of git commands I use.

| alias         | description                             |
| ------------- |:----------------------------------------|
| a             | `git add`                               |
| aa            | `git add --all`                         |
| b             | `git branch`                            |
| c             | `git commit --message`                  |
| ca            | `git add --all && git commit --message` |
| co            | `git checkout`                          |
| d             | `git diff`                              |
| l             | nice git log                            |
| m             | `git merge`                             |
| r             | `git rm`                                |
| reword        | corrects last commit message            |
| s             | `git status`                            |
