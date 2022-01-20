# export nvim completion settings for lukechilds/zsh-nvm plugin
# note: this must be exported before the plugin is bundled
export NVIM_DIR=${HOME}/.nvm
export NVIM_COMPLETION=true

# source plugins
source ~/.zsh_plugins.sh

# aliases
alias ls='ls -al'
alias vim='nvim'

# use nix
if [ -e /home/carolyn/.nix-profile/etc/profile.d/nix.sh ]; then . /home/carolyn/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

# starship theme
eval "$(starship init zsh)"
