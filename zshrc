export XDG_CONFIG_HOME="${HOME}/.config"

export DOTFILES_DIR="${HOME}/.local/opt/dotfiles"

autoload -Uz compinit
if [ $(date +'%j') != $(stat -f '%Sm' -t '%j' ~/.zcompdump) ]; then
    compinit -i
else
    compinit -C -i
fi

for alias_file in $(ls ${HOME}/.local/lib/aliases/); do
    source "${HOME}/.local/lib/aliases/${alias_file}"
done

source "${HOME}/.config/antibody/plugins.zsh"

export PATH="${HOME}/.local/bin:${PATH}"
