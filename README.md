
# Flycheck

NOTE: the arm64 directory will disappear once I stop using anything x86 on mac
(and I stop using older version of emacs on x86)

When setting up a machine (or updating emacs packages):
1. start emacs (on macos, `arch` = 'arm64')
1. Esc-x load-file ~/emacs/arm64/melpa.el
1. this will populate ~/.emacs.d with packages

# OLD - FIXMEs

## JSON mode format

* do not force the user to select the entire buffer (mark region)
* do not replace entire contents with error message when syntax error is present

## save in JSON mode

Automatcially reformat like in go mode.
Depends on a fix for JSON mode format.

# OLD - Top Ten

Things that would be useful.

If not already written by someone, good things for me to learn ```.el``` with.

## ```git-find-file```

Like ```find-file``` (```C-x C-f```), except
* ```C-x C-g```
* uses ```git ls-files```
* default to top directory of repo
* provide a way to search from current directory
 * of buffer from which it was launched
 * perhaps do this as a separate command
* does substring matching like ```switch-to-buffer```, this:
 * ```.go<tab>```, all files with substring ```.go``` (essentially all go files)
 * ```foo<tab>```, all files with substring foo
* need to somehow list the full directory path
* perhaps may be done better as some sort of speed bar

## ```godef``` and Source Paths

Fix to allow ```. dir/path```.

## ```godef``` and All Places Where Foo is Used

Provide some sort of way to find out all places something is being used.<br/>
Examples:
* all places where function is invoked
* all places where type is being used
* all places where a variable is being used
 * example: some dumbass thinks it is a good idea to have a variable named ```s``` at the top of a very long function, you want to see all places where ```s``` is being referenced in that function (read from or set).  ```isearch-forward``` (C-s), shows you all ```s```.  That's not what you want.  You want all instances of the variable ```s```.

## ```git-grep```

* allow ```git grep``` from emacs.
* allow choosing files (like speed bar)
* have a mode such that it does ```git grep -l``` (list files only)

## Persistent Buffer List

Much like command line history in bash, it would
be nice if the list of buffers that emacs has open
would be continuously saved somewhere (saved when buffers
are created and deleted).  Occasionally, VM crashes or
emacs crashes and would like to pick up where I left off.
Also, when working on different projects, would like to
name those projects.

Summary:
* ```%> newscr edit Project-1 emacs``` would load 'Project-1' buffers
* ```^J, screen -t Project-2 2 emacs``` would load 'Project-2' buffers
* as files are loaded and buffers are killed, the list is updated then (it is always up to date, I do not want to be required to explicitly save the list every so often, this should happened when the buffer list changes automatically)

Ideas:
* see if [desktop-save](http://www.gnu.org/software/emacs/manual/html_node/emacs/Saving-Emacs-Sessions.html) can be used
** currently using ```desktop-save``` to save session to a directory under ~/desktop/<DIR>
** currently using ```desktop-change-dir``` to switch to ~/desktop/<DIR2>
* would ```recentf-mode``` help?
* consider keying off the **same** shell environment variables that are set up when screen starts

```
[paul@paul-sc:~/sc-minipoc/skycontrol/src]
%> env | grep SCREEN
SCREEN_SHELL_TITLE=shell_Git
SCREEN_SOCK_NAME=shell
SCREEN_WINDOW_TITLE=Git

[paul@paul-sc:~/sc-minipoc/skycontrol/src]
%> env | grep HIST
HISTSIZE=100000
HISTFILESIZE=100000
HISTCONTROL=ignoredups:erasedups
HISTFILE=/home/paul/.bash_history_files/shell_Git_history
```

Would have something that looked like this:
```
-UUU:%%--F1  *GNU Emacs*    All (1,0)      (Fundamental) -----------------------------
For information about GNU Emacs and the GNU system, type C-h C-a.
[ paul-sc ][            1-$ Project-1  2*$ Project-2            ][ 09/01/15 12:46 PM ]
[ paul-mac-pro ][          1- MacOSX-EDIT  2* SC-EDIT           ][ 09/01/15 12:46 PM ]
```

The last buffer list for ```Project-1``` would automatically be loaded upon executing this command:
```
[paul@paul-sc:~/sc-minipoc/skycontrol/src]
%> newscr edit Project-1 emacs
[ paul-mac-pro ][      1- MacOSX-EDIT  2* SC-EDIT      ][ 09/01/15 12:47 PM ]
```

