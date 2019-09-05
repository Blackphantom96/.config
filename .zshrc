# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/juanmoreno/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME=""
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
plugins=(git
        osx
        mvn
        npm
        node
        gitignore
        docker
        gradle
        httpie
        colored-man-pages
	history
        gradle
        brew
        command-not-found
        jsontools
        git-flow
	)
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

  # Set Spaceship ZSH as a prompt
  autoload -U promptinit; promptinit
  prompt pure
  PROMPT='%(?.%F{green}⪢.%F{red}⪢)%f '
export JAVA_HOME=$(/usr/libexec/java_home)
export HOME="/Users/juanmoreno"
export IP_ADDRESS="10.100.26.81"
export HOUSTON_HOME="/usr/local/payu"
export MAVEN_HOME_LOCAL="$HOME/.maven"
export POL_HOME="$HOUSTON_HOME/POL"
export POL_ITERACIONES="671775"
export POL_SAL="-8c=GfMBX8U!!VkuX"
export POL_KEY="GuEDXkTZ.6!@u.v2mq3"
export SKIP_LIQUIBASE="true"
export GS_HOME="$HOUSTON_HOME/gigaspaces-xap-premium-10.0.1"
export JSHOMEDIR="$HOUSTON_HOME/gigaspaces-xap-premium-10.0.1"
export M2_HOME="$HOME/.m2"
export M2_REPO="$HOME/.m2/repository"
export CLUSTER_HOME="$HOUSTON_HOME/cluster"
export M2="$M2_HOME/bin"
export TOMCAT_MAF_HOME="$POL_HOME/tomcat-maf-7"
export MAVEN_HOME="$POL_HOME/maven-1.0.2"
export MAVEN_HOME_1="$POL_HOME/maven-1.1"
export JAVA_HOME_7="$POL_HOME/jdk1.7.0_XX"
export JPDA_ADDRESS=8099
export JPDA_TRANSPORT="dt_socket"
export ALEXANDRIA_HOME="$HOUSTON_HOME/alexandria"
export UTS_HOME="$HOUSTON_HOME/uts"
export HOST_INTERNAL_ADDRESS="host.docker.internal"
export NIC_ADDR="#en0:ip#"
