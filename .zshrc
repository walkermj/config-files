# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/michaelwalker/.oh-my-zsh"
export TERM="xterm-256color"

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
plugins=(git vi-mode jira)

source $ZSH/oh-my-zsh.sh

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

#-- alias to go straight to CAMQ folder
alias camq="cd ~/Documents/Projects/MQ-CA/ca-megaquery/"

#-------------------------
#-- EXECUTABLE ALIASES
#-------------------------
# pgfutter ='~/pgfutter'

# Alias python command so that python 3 is used instead of 2.7
# alias python=python3

# Alias to run Pentaho Kettle from commandline
alias spoon="sh /usr/local/Caskroom/data-integration/8.1.0.0-365/data-integration/spoon.sh"

#alias to run Simons two sets executable
alias 2sets="~/twosets_v1"

#-------------------------
#-- SSH ALIASES
#-------------------------

# Alias to connect directly to ddfref
# alias ddfref="bash ~/ssh_connections/ddfRefConnect/ddfRef_ssh.sh"

#--alias to connect to jumpbox
alias jbx="ssh -L 2224:cln-reference-ddf-etl-01.gel.zone:22 mwalker@10.3.0.50"

#--alias to tunnel to ddf ref environent
alias ref="ssh -L 5434:10.1.24.3:5432 -L 5435:127.0.0.1:5432 -L 2700:127.0.0.1:2700 mwalker@127.0.0.1 -p 2224"

#-- alias to tunnel to dams db copy
alias dams="ssh -L 5438:10.1.24.33:5432 mwalker@10.1.24.38"

#-- alias to tunnel to ddf Prod db copy
alias ddfprod="ssh -L 5439:10.1.24.34:5432 mwalker@10.1.24.38"

#-- alias to tunnel to mis db copy
alias mis="ssh -L 5440:10.1.24.37:5432 mwalker@10.1.24.38"

#-- alias to tunnel to ngis db cluster
alias ngis="ssh -L 5436:10.1.30.37:5432 mwalker@10.1.30.33"

#-- alias to connect to query dev box
alias qry="ssh mwalker@10.1.24.38"

#-- alias to connect to query via cdt_robot
alias qry_robot="ssh cdt_deploy@10.1.24.38"

#-- alias to connect to index dev box
alias index="ssh mwalker@10.1.24.39"

#-- alias to tunnel to index dev box (for when using CDT db locally)
alias cdt_db="ssh -L  5441:localhost:5433 mwalker@10.1.24.39"

#-- tunnel to NGIS UAT databases
alias ngis_uat="ssh -L 5444:10.252.0.155:15432 mwalker@10.5.8.31 "

#--tunnel to NGIS slave dbs
alias ngis_slaves="ssh -L 5444:10.5.66.11:5432 mwalker@10.1.24.38"


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
