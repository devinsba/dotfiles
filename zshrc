export ADOTDIR="$HOME/.config/antigen"
source $HOME/.local/share/antigen/antigen.zsh
antigen use oh-my-zsh

antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme jreese

antigen apply

export PATH="${HOME}/.local/bin:${PATH}"

export DOTFILES_DIR="$(dirname $(readlink $HOME/.zshrc))"

for f in "$DOTFILES_DIR"/aliases/*; do source $f; done

export PYENV_ROOT="$HOME/.local/opt/pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

export NVM_DIR="$HOME/.local/share/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Enable sdkman
export SDKMAN_DIR="$HOME/.local/opt/sdkman"
[[ -s "${SDKMAN_DIR}/bin/sdkman-init.sh" ]] && source "${SDKMAN_DIR}/bin/sdkman-init.sh"

source ~/.local/share/rvm/scripts/rvm
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
