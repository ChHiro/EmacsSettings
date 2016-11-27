PATH="/Users/hiro/.rbenv/shims:/Users/hiro/.rbenv/shims:/Users/hiro/.rbenv/bin:/Users/hiro/.rbenv/versions/2.2.3/lib/ruby/gems/2.2.0/gems/rcodetools-0.8.5.0/bin:/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

## create emacs env file
perl -wle \
    'do { print qq/(setenv "$_" "$ENV{$_}")/ if exists $ENV{$_} } for @ARGV' \
    PATH > ~/.emacs.d/shellenv.el

# Terminal settings
PS1="\s@\w>"
export PS1

# ruby
## 初期化処理
eval "$(rbenv init -)"

# Alias
alias	ls='ls -F -G'
alias   la='ls -a'
alias   rspec='rspec  -c'


set completion-ignore-case On
