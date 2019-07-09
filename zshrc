export DOTFILES_DIR="${HOME}/.local/opt/dotfiles"

source "${HOME}/.config/antibody/plugins.zsh"

for alias_file in $(ls ${HOME}/.local/lib/aliases/); do
    source "${HOME}/.local/lib/aliases/${alias_file}"
done