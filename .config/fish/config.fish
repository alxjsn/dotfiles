#!/usr/bin/env fish

set fish_greeting

set -gx EDITOR vim
set -gx PATH ~/bin/(uname -n) ~/bin ~/go/bin/ ~/.local/bin /usr/local/bin /usr/bin /bin /sbin /usr/sbin
set -gx GOPATH $HOME/go
set -gx _JAVA_OPTIONS -Dswing.aatext=TRUE -Dawt.useSystemAAFontSettings=lcd
set -gx TERM xterm-256color
set -x GPG_TTY tty
set -x GO111MODULE on

alias pass="gopass"
alias feh="feh  --sort filename --borderless --auto-zoom --scale-down --auto-rotate --image-bg black --draw-filename"
alias scp="scp -F ~/.ssh/config"
alias rg="rg --no-ignore"
alias jq="jq -C"
alias less="less -R"
alias ffuf='ffuf -c -ac -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4095.0 Safari/537.36"'

# Source fish config based on hostnames
if test -e ~/.config/fish/(uname -n).fish
    source ~/.config/fish/(uname -n).fish
end
