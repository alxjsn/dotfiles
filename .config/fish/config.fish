#!/usr/bin/env fish

set fish_greeting

set -gx EDITOR vim
set -gx PATH ~/bin/(uname -n) ~/bin ~/go/bin/ ~/.local/bin /usr/local/bin /usr/bin /bin /sbin /usr/sbin
set -gx GOPATH $HOME/go
set -gx _JAVA_OPTIONS -Dswing.aatext=TRUE -Dawt.useSystemAAFontSettings=lcd
set -gx _JAVA_AWT_WM_NONREPARENTING 1
set -gx TERM xterm-256color
set -x GPG_TTY tty

alias pass="gopass"
alias feh="feh  --sort filename --borderless --auto-zoom --scale-down --auto-rotate --image-bg black --draw-filename"
alias d="dnote"
alias scp="scp -F ~/.ssh/config"
alias rg="rg --no-ignore"
alias jq="jq -C"
alias less="less -R"
