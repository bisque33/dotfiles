# PATH
set -x PATH /usr/local/bin /usr/local/sbin /usr/bin /bin /usr/sbin /sbin

set -x EDITOR vim

# key bind
function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end

# alias
balias be 'bundle exec'
balias d  'docker'
balias dc 'docker-compose'

# anyenv
status --is-interactive; and . (anyenv init - | psub)

# direnv
eval (direnv hook fish)

# go
set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin

# gcp
. /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc

# lazy-awslogs
. $HOME/go/src/github.com/cm-igarashi-ryosuke/lazy-awslogs/shell-completion/lazy-awslogs.fish
