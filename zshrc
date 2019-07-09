export DOTFILES_DIR="${HOME}/.local/opt/dotfiles"
export XDG_CONFIG_HOME="${HOME}/.config"

autoload -Uz compinit

for dump in ~/.zcompdump(N.mh+24); do
  compinit -i
done

compinit -i -C

for alias_file in $(ls ${HOME}/.local/lib/aliases/); do
    source "${HOME}/.local/lib/aliases/${alias_file}"
done

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# sdkman
[[ -s "${HOME}/.sdkman/bin/sdkman-init.sh" ]] && source "${HOME}/.sdkman/bin/sdkman-init.sh"

source "${HOME}/.config/antibody/plugins.zsh"
export PATH="${HOME}/.local/bin:${PATH}"
