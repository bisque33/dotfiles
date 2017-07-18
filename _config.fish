# PATH
# set -x PATH /usr/local/bin /usr/bin /bin /usr/sbin /sbin

set -x EDITOR vim

# peco
function fish_user_key_bindings
    bind \cr peco_select_history
end

# alias
balias gb 'git branch'
balias gc 'git checkout'
balias gs 'git status'
balias be 'bundle exec'
balias docc 'docker-compose'
balias kube 'kubectl'
balias vim 'nvim'
balias awslogs lazy-awslogs

# anyenv 非対応
# set -x PATH "$HOME/.anyenv/bin $PATH"
# eval (anyenv init - fish)

# goenv 非対応
# goenv init - | psub
# source (goenv init - | psub)

# direnv
eval (direnv hook fish)

# go
set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin

# lazy-awslogs
. $HOME/go/src/github.com/cm-igarashi-ryosuke/lazy-awslogs/shell-completion/lazy-awslogs.fish
