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
alias rcp='rsync -Prx'
alias m='cd ~/majime'
alias feh="feh  --sort filename --borderless --auto-zoom --scale-down --image-bg black --draw-filename"
alias scp="scp -F ~/.ssh/config"
alias sshfs="sshfs -o reconnect,ServerAliveInterval=15,ServerAliveCountMax=3"
alias rg="rg --no-ignore"
alias jq="jq -C"
alias less="less -R"
alias ffuf='ffuf -c -ac -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4095.0 Safari/537.36"'
alias bcurl='curl --proxy http://127.0.0.1:8080 -k'
alias luigi='python -m luigi'
alias Gcp='git cherry-pick --ff'
alias Gld='git log --topo-order --stat --patch --pretty=format:"%C(bold yellow)commit %H%C(auto)%d%n%C(bold)Author: %C(blue)%an <%ae> %C(reset)%C(cyan)%ai (%ar)%n%C(bold)Commit: %C(blue)%cn <%ce> %C(reset)%C(cyan)%ci (%cr)%C(reset)%n%+B"'

# Configure PATH
set -gx PATH ~/bin/(uname -n) ~/bin ~/go/bin ~/.local/bin ~/.npm-global/bin /usr/local/bin /usr/bin /bin /sbin /usr/sbin /usr/bin/core_perl/ /usr/bin/vendor_perl

# Add Ruby user dir to PATH
if which ruby &>/dev/null && which gem &>/dev/null
    fish_add_path -P (ruby -r rubygems -e 'puts Gem.user_dir')/bin
end

# Add Elixir's mix to path
if test -d ~/.mix/escripts
    fish_add_path -P ~/.mix/escripts
end

# Source fish config based on hostnames
if test -e ~/.config/fish/(uname -n).fish
    source ~/.config/fish/(uname -n).fish
end

# Source fish secrets
source ~/.config/fish/secrets.fish

# Enable fzf key bindings
if type -q fzf
    function fish_user_key_bindings
        fzf_key_bindings
    end
end

if status is-interactive
  cd $HOME/majime
end
