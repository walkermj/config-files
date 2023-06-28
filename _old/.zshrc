# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
ZSH_DISABLE_COMPFIX="true"
export ZSH="/Users/michael.walker/.oh-my-zsh"
export TERM="xterm-256color"

#to set correct python installation
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=powerlevel10k/powerlevel10k
POWERLEVEL9K_MODE='nerdfont-complete'
# ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# to remove user@hostname in the prompt 
# DEFAULT_USER=$(whoami)

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git vi-mode jira gcloud)

source $ZSH/oh-my-zsh.sh

#to enable and configure awsp (AWS Switch profile)
#source ~/awsp_functions.sh

# alias awsall="_awsListProfile"
# alias awsp="_awsSetProfile"
# alias awswho="aws configure list"

# complete -W "$(cat $HOME/.aws/credentials | grep -Eo '\[.*\]' | tr -d '[]')" _awsSwitchProfile
# complete -W "$(cat $HOME/.aws/config | grep -Eo '\[.*\]' | tr -d '[]' | cut -d " " -f 2)" _awsSetProfile

#
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#-------------------------
#-- FOLDER ALIASES
#-------------------------

#-- alias to go straight to projects folder
alias proj="cd ~/Documents/Projects/"

#-- alias to go straight to scratch folder
alias scratch="cd ~/Documents/Scratch/"

#-------------------------
#-- EXECUTABLE ALIASES
#-------------------------
# pgfutter ='~/pgfutter'

# Alias python command so that python 3 is used instead of 2.7
alias python=python3

# Alias to run Pentaho Kettle from commandline
alias spoon="sh /usr/local/Caskroom/data-integration/8.1.0.0-365/data-integration/spoon.sh"

#alias to run Simons two sets executable
alias 2sets="~/twosets_v1"

#-------------------------
#-- SSH ALIASES
#-------------------------

#--alias gcloud auth
alias ga="gcloud auth login"

#--alias gcloud auth
alias gap="gcloud auth application-default login"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh


# add poetry as $PATH variable
export PATH="$HOME/.poetry/bin:$PATH"
# add glcoud utils to $PATH variable
export PATH="$HOME/google-cloud-sdk:$PATH"
# addwhirl to $PATH variable
export PATH="$HOME/Documents/projects/whirl_mollie:$PATH"

# add dataflow to PYTHONPATH to enable custom modules
PYTHONPATH="/Users/michael.walker/Documents/Projects/dataflow-payments-db-ingestion:$PYTHONPATH"
export PYTHONPATH

# add gitlab  var to authenticate with MCP CLI
export MOL_GITLAB_TOKEN="$HOME/.ssh/id_rsa"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# dbt env vars
export SOURCE_PROJECT='mol-data-prod'
export DEST_PROJECT='mol-data-prod'
