ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

DISABLE_AUTO_UPDATE="false"
DISABLE_LS_COLORS="false"

plugins=(git git-extras ruby rbenv rails bundler gem nvm npm node sublime rbates jsontools history docker debian archlinux systemd heroku)

export PATH="/usr/local/bin:$PATH"
export EDITOR="nano"

source $ZSH/oh-my-zsh.sh

# use .env for environment variables specific to system
if [ -f ~/.env ]; then
    . ~/.env
fi

# use .bash_aliases for additional aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
