alias gp="git push"
alias tr="tree ."
alias zsh="vi ~/.zshrc"
alias db="mysql -u root"

export PATH=$HOME/.nodebrew/current/bin:$PATH
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
PURE_PROMPT_SYMBOL='✈️ '
PURE_GIT_DOWN_ARROW='👇'
PURE_GIT_UP_ARROW='👆'
zstyle :prompt:pure:continuation show no
zstyle :prompt:pure:git:dirty show no
zstyle :prompt:pure:git:action show no
zstyle :prompt:pure:user show yes
zstyle :prompt:pure:host show yes
zstyle :prompt:pure:path color white
zstyle :prompt:pure:git:branch color cyan
zstyle :prompt:pure:git:execution_time show yes
prompt pure

function conda(){
    unset -f conda
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/user/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/user/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/user/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/user/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
}


# pathを通す
export PATH="/Users/takanori/.rbenv/shims:/usr/bin:$PATH"

# homebrewのopensslを用いる
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

export PATH="/Users/takanori/.asdf/installs/erlang/20.1/bin/:$PATH"
export PATH="/Users/takanori/.asdf/installs/elixir/1.8.1/bin/:$PATH"

fpath=($(brew --prefix)/share/zsh/site-functions $fpath)

autoload -U compinit
compinit -u

export PATH="/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home/bin:$PATH"
export PATH="/Users/takanori/Library/Python/3.8/bin:$PATH"

export PATH="$HOME/go/bin:$PATH"

fpath=(~/.zsh $fpath)
autoload -Uz compinit
compinit -u
