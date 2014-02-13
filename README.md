# Dotfiles

This repository contains configuration-files and small helpers of my cygwin-bash.

## Prerequisites

The configuration shown here matches to certain tools you may install if you want to get this stuff running.

- [Diffmerge](https://sourcegear.com/diffmerge/)
- [Git Extensions](https://code.google.com/p/gitextensions/)

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
| `ui`          | opens current repository in [Git Extensions](https://code.google.com/p/gitextensions/)                                        |
| `up`          | gets you to the parent directory        |
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

This file configures the bash to display *ä, ö, ü*

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

## .gitconfig

### [color.*]

The defined colors help to distinguish between new, modified and deleted files.

### [core.editor]

I configured Sublime 3 as standard text editor handling more complex git operations.

### [diff] & [merge]

[Diffmerge](https://sourcegear.com/diffmerge/) is configured as diff- and mergetool.