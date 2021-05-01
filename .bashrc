
alias ..='cd ..'
alias ls='ls --color'
alias grep='grep --color=auto'

export EDITOR=vim

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}
export PS1='\u@\h \[\033[1;33m\]\w\[\033[0m\]$(parse_git_branch)$ '

source ~/.git-completion.bash

export PATH=$HOME/packages/bin:$PATH

export C_INCLUDE_PATH=$HOME/packages/include:$C_INCLUDE_PATH
export PKG_CONFIG_PATH=$HOME/packages/lib/pkgconfig:$PKG_CONFIG_PATH
export LD_LIBRARY_PATH=$HOME/packages/lib:$LD_LIBRARY_PATH
export CCACHE_DIR=$HOME/.ccache

