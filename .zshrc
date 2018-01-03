# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/jordan/.oh-my-zsh


export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye &>/dev/null
unset SSH_AGENT_PID
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)



# Theme
ZSH_THEME="magic-af"

# Plugins
plugins=(
  git
)

# Aliases
source $ZSH/oh-my-zsh.sh
alias 'suspend'='systemctl suspend'
