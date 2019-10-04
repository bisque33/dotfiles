# PATH
# set -x PATH /usr/local/bin /usr/bin /bin /usr/sbin /sbin

set -x EDITOR vim

# key bind
function fish_user_key_bindings
  bind \cr peco_select_history # peco
  bind \cg peco_select_ghq_repository  # ghq
end

# alias
balias be 'bundle exec'
balias docc 'docker-compose'
balias kube 'kubectl'

# anyenv 非対応
# set -x PATH "$HOME/.anyenv/bin $PATH"
# eval (anyenv init - fish)

# goenv 非対応
# goenv init - | psub
# source (goenv init - | psub)

# nodebrew
set -x PATH $HOME/.nodebrew/current/bin $PATH

# direnv
eval (direnv hook fish)

# go
set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin

# gcp
source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc

# lazy-awslogs
. $HOME/go/src/github.com/cm-igarashi-ryosuke/lazy-awslogs/shell-completion/lazy-awslogs.fish
