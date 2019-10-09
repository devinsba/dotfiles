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

for include_file in $(ls ${HOME}/.local/lib/zsh-includes/); do
    source "${HOME}/.local/lib/zsh-includes/${include_file}"
done

if [[ -s "${HOME}/.config/antibody/plugins.zsh" ]]; then
    source "${HOME}/.config/antibody/plugins.zsh"
else
    eval "$(antibody bundle devinsba/zsh-plugins)"
    update_antibody_plugin_cache
    source "${HOME}/.config/antibody/plugins.zsh"
fi

export PATH="${HOME}/.local/bin:${PATH}"
