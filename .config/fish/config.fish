#!/usr/bin/env fish

set fish_greeting

# Application settings
set -gx GOPATH $HOME/go
set -x GO111MODULE on
set -gx TERM xterm-256color
set -gx EDITOR vim
set -x GPG_TTY tty
set -gx _JAVA_OPTIONS -Dswing.aatext=TRUE -Dawt.useSystemAAFontSettings=lcd

# Aliases
alias pass="gopass"
alias feh="feh  --sort filename --borderless --auto-zoom --scale-down --auto-rotate --image-bg black --draw-filename"
alias scp="scp -F ~/.ssh/config"
alias rg="rg --no-ignore"
alias jq="jq -C"
alias less="less -R"
alias ffuf='ffuf -c -ac -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4095.0 Safari/537.36"'

# Paths
set -gx PATH ~/bin/(uname -n) ~/bin ~/go/bin ~/.local/bin /usr/local/bin /usr/bin /bin /sbin /usr/sbin
if which ruby >/dev/null && which gem >/dev/null
    set -gx PATH (ruby -r rubygems -e 'puts Gem.user_dir')/bin $PATH
end

# Source fish config based on hostnames
if test -e ~/.config/fish/(uname -n).fish
    source ~/.config/fish/(uname -n).fish
end
