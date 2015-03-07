# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme robbyrussell

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

function copy_examples
  set mask $argv[1]
  set regex $argv[2]
  for file in $mask
    cp $file (echo $file | sed $regex)
  end
end

set -x PKG_CONFIG_PATH /usr/local/lib/pkgconfig:/opt/X11/lib/pkgconfig

set -x PATH $PATH /Users/bogdan/Library/Python/2.7/bin/ /Users/bogdan/.rvm/gems/ruby-2.1.0/bin /Users/bogdan/.rvm/gems/ruby-2.1.0@global/bin /Users/bogdan/.rvm/rubies/ruby-2.1.0/bin /Users/bogdan/.rvm/bin /usr/bin /bin /usr/sbin /sbin /usr/local/bin /Users/bogdan/bin /usr/local/sbin /usr/local/go/bin /Users/bogdan/.tmuxifier/bin /Users/bogdan/workspace/lfe/bin/
set fish_greeting
set -x GOPATH /Users/bogdan/worspace/gofiles
#set -x POWERLINE_COMMAND /Users/bogdan/Library/Python/2.7/bin/powerline
source /usr/local/lib/python2.7/site-packages/powerline/bindings/fish/powerline-setup.fish 
powerline-setup
alias vim="mvim -v"
alias gA="git add -A"
alias ga="git add"
alias gmm="git merge -m"
alias gm="git merge"
alias gfs="git flow feature start"
alias gff="git flow feature finish"
alias ghs="git flow hotfix start"
alias ghf="git flow hotfix finish"
alias gl="git log"
alias gc="git commit"
alias gpo="git push origin"
alias gco="git checkout"
alias gp="git pull"
alias gs="git status"
alias gst="git stash"
set -x  RUBY_GC_HEAP_INIT_SLOTS 600000
set -x  RUBY_GC_HEAP_FREE_SLOTS 600000
set -x  RUBY_GC_HEAP_GROWTH_FACTOR 1.25
set -x  RUBY_GC_HEAP_GROWTH_MAX_SLOTS 300000
set -x EDITOR emacs

rvm use default
alias be='bundle exec'
alias e='emacs'
alias gb='git branch'
function checkout_feature
    gco feature/$argv
end

function rake_devtest
  set -x RAILS_ENV test; rake $argv; set -x RAILS_ENV development; rake $argv
end
