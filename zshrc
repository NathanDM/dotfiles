
source $(brew --prefix)/share/antigen/antigen.zsh
antigen use oh-my-zsh

for file in $HOME/.{aliases,exports}; do
    [ -r "$file" ] && source "$file"
done
unset file

[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && source "$NVM_DIR/bash_completion"

antigen bundle git
antigen bundle sudo
antigen bundle z
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle lukechilds/zsh-better-npm-completion
antigen bundle history-substring-search
antigen bundle chrissicool/zsh-256color
antigen bundle tomsquest/nvm-auto-use.zsh

antigen theme refined

antigen apply

eval "$(pyenv init --path)"
eval "$(direnv hook zsh)"

[ -f "$HOME/.fzf.zsh" ] && source "$HOME/.fzf.zsh"

[ -f "$GCLOUD_DIR/path.zsh.inc" ] && source "$GCLOUD_DIR/path.zsh.inc"
[ -f "$GCLOUD_DIR/completion.zsh.inc" ] && source "$GCLOUD_DIR/completion.zsh.inc"

source "$HOME/.antigen/bundles/lukechilds/zsh-better-npm-completion/zsh-better-npm-completion.plugin.zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

pokemonsay 'Have a nice day'

