if (( ! ${fpath[(I)/usr/local/share/zsh/site-functions]} )); then
  FPATH=/usr/local/share/zsh/site-functions:$FPATH
fi

source ~/.zplug/init.zsh

# Make sure to use double quotes
zplug "zsh-users/zsh-history-substring-search"

zplug "plugins/git",   from:oh-my-zsh
zplug "plugins/github",   from:oh-my-zsh
zplug "plugins/brew",   from:oh-my-zsh

zplug "kiurchv/asdf.plugin.zsh", defer:2

zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug 'skywind3000/z.lua'

# Load theme file
#zplug "mafredri/zsh-async", from:github
#zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
zplug "themes/robbyrussell",   from:oh-my-zsh, as:theme
#zplug "themes/sorin",   from:oh-my-zsh, as:theme

zplug 'zplug/zplug', hook-build:'zplug --self-manage'

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi
# Then, source plugins and add commands to $PATH
zplug load

setopt rmstarsilent
bindkey -e

autoload -U +X bashcompinit && bashcompinit
source ~/.linky

export PATH="${HOME}/bin:$PATH"
export BYOBU_PREFIX=/usr/local
export EDITOR='vim'

# direnv
eval "$(direnv hook zsh)"

. $HOME/.asdf/asdf.sh
