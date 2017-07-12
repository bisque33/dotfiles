# PATH
# set -x PATH /usr/local/bin /usr/bin /bin /usr/sbin /sbin

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

# anyenv 非対応
# set -x PATH "$HOME/.anyenv/bin $PATH"
# eval (anyenv init - fish)

# goenv
# goenv init - | psub
# source (goenv init - | psub)
