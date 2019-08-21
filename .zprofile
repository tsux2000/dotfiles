# autocomplete
autoload -U compinit
compinit

# prompt
PROMPT='%F{2}%~%f
%n $ '

# history folder
export HISTFILE=${HOME}/.zhistory
# max history number in console
export HISTSIZE=1000
# max history number in .zhistory
export SAVEHIST=100000
# avoid over count
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_no_store
# 開始と終了を記録
setopt EXTENDED_HISTORY
# スペースで始まるコマンド行はヒストリリストから削除
setopt hist_ignore_space
# ヒストリを呼び出してから実行する間に一旦編集可能
setopt hist_verify
# 余分な空白は詰めて記録
setopt hist_reduce_blanks
# 補完時にヒストリを自動的に展開
setopt hist_expand

# Setting PATH for Python 3.7
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

# .zprofileから.zshrcが読み込まれるようにする
if [ -f ~/.zshrc ] ; then
. ~/.zshrc
fi
