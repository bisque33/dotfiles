# PATH
set -x PATH /usr/local/bin /usr/local/sbin /usr/bin /bin /usr/sbin /sbin

set -x EDITOR vim

# key bind
function fish_user_key_bindings
    bind \cr 'peco_select_history (commandline -b)'
end

# alias
balias b 'rbenv exec bundle'
balias be 'rbenv exec bundle exec'
balias d 'docker'
balias dc 'docker-compose'

# anyenv
status --is-interactive
and . (anyenv init - | psub)

# goenv
status --is-interactive
and source (goenv init -|psub)
set -x PATH $PATH $GOPATH/bin
set -x PATH $PATH $GOROOT/bin

# direnv
eval (direnv hook fish)

# flutter
set -x PATH $PATH $HOME/flutter/bin

# gcp
. /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc

# lazy-awslogs
. $HOME/go/src/github.com/cm-igarashi-ryosuke/lazy-awslogs/shell-completion/lazy-awslogs.fish

# aws_completer
complete -c aws -f -a '(begin; set -lx COMP_SHELL fish; set -lx COMP_LINE (commandline); /usr/local/bin/aws_completer; end)'

# 独自関数
## SQLをフォーマットして出力する
function sqlf
    echo $argv | npx sql-formatter-cli
end

## JSONStringをフォーマットして出力する
function jsonf
    echo $argv | jq
end
