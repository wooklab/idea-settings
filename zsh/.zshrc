# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/${USER-DIR}/.oh-my-zsh"

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
)

# User configuration
source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export JAVA_HOME="/Users/wookmac/.sdkman/candidates/java/current"
export APACHE_MAVEN="/Users/wookmac/wemakeprice/etc/maven/apache-maven-3.6.0"
export PATH=${JAVA_HOME}/bin:${NODE_HOME}/bin:${APACHE_MAVEN}/bin:$PATH

# Node Version Management
export NVM_DIR=~/.nvm
source /usr/local/opt/nvm/nvm.sh

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/wookmac/.sdkman"
[[ -s "/Users/wookmac/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/wookmac/.sdkman/bin/sdkman-init.sh"


# You may need to manually set your language environment
# export LANG=en_US.UTF-8
# rbenv settings
eval "$(rbenv init -)"

# Alias
#alias vi='vim'
alias ll='ls -alFG'
alias cls='clear'
alias grep="grep --color=auto"
alias cdw="cd /Users/wookmac/wemakeprice/workspace"

# Prompt Configurations
prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}

