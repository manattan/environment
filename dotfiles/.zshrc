alias gp="git push"
alias tr="tree ."
alias zsh="vi ~/.zshrc"
alias db="mysql -u root"
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH="/Users/motegitakanori/Library/Python/3.8/bin"
export PATH="$HOME/go/bin:$PATH"
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin":$PATH
fpath=(~/.zsh $fpath)
fpath+=$HOME/.zsh/pure
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

plugins=(… zsh-completions)
autoload -U compinit
compinit

# 補完をハイライトする
zstyle ':completion:*:default' menu select=2

autoload -U promptinit
promptinit
prompt pure
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

# pecoを使って history 検索
function peco-select-history() {
    local tac
    if which tac > /dev/null; then
        tac="tac"
    else
        tac="tail -r"
    fi
    BUFFER=$(\history -n 1 | \
        eval $tac | \
        peco --query "$LBUFFER")
    CURSOR=$#BUFFER
    zle clear-screen
}
zle -N peco-select-history
bindkey '^r' peco-select-history
export PATH=$HOME/.nodebrew/current/bin:$PATH