# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export TERM='xterm-256color'
export EDITOR='nvim'
export VISUAL='nvim'

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

##################################################################### END OF OH MY ZSH ##################################################
# . $HOME/.asdf/asdf.sh
# . /usr/local/opt/asdf/asdf.sh
. /usr/local/opt/asdf/libexec/asdf.sh
eval "$(rbenv init -)"
eval "$(nodenv init -)"
export PATH=/Users/andrewjordaan/.nodenv/shims:/Users/andrewjordaan/.rbenv/shims:/Users/andrewjordaan/.asdf/shims:/usr/local/Cellar/asdf/0.8.1_1/libexec/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/MacGPG2/bin:/Library/Apple/usr/bin:/usr/local/bin

alias cdhowler='cd ~/Documents/projects/Howler'
alias yamltest='bundle exec rails test test/i18n/missing_translations_test.rb'
alias rtest='bundle exec rails test'
alias rails='bin/rails'
alias cdprojects='cd ~/Documents/projects'
alias yamlformat='npm run update --prefix code_snippets/language-files'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/.git/ --work-tree=$HOME'
alias fly-rails='fly ssh console -C "app/bin/rails console"'
alias lg='lazygit'
alias recent-branches="git for-each-ref --count=5 --sort=-committerdate refs/heads/ --format='%(refname:short)'"
alias rb="recent-branches"
alias nvim-config="cd ~/.config/nvim && nvim ."
alias zsh-config="cd ~ && nvim ./.zshrc"

alias fly-deploy-staging='fly deploy -c ./fly.staging.toml'
alias fly-deploy-production='fly deploy -c ./fly.production.toml'

. /usr/local/opt/asdf/libexec/asdf.sh

function heroku-rails {
  heroku run rails c -a howler-staging-pr-${1}
}


function open-jira {
  open -a "Google Chrome" "https://platform45.atlassian.net/jira/software/c/projects/HOW/boards/284?assignee=613f0ec91238e800710f93b1"
}

function open-ticket {
  issue=${current_branch:3}
  open -a "Google Chrome" "https://platform45.atlassian.net/browse/$issue"
}

function open-pr-app {
  open -a "Google Chrome" "https://www.pr-${1}.howlerstaging.co.za"
}

function open-pr {
  open -a "Google Chrome" "https://github.com/howler/Howler/pull/${1}"
}

function bundle-id {
  osascript -e 'id of app "'"$1"'"'
}

function jira-branch {
  current_branch=$(git branch --show-current)
  issue=${current_branch:3}
  jira issues show "$issue"
}

function new-ticket {
  git checkout master
  git pull
  echo "Checked out and pulled master"
  echo "Creating new branch"
  git checkout -b "aj-how-$1"
}


function merge-master {
  current_branch=$(git branch --show-current)
  echo "Current Branch: $current_branch"
  git pull
  git checkout master
  git pull
  echo "Checked out and pulled master"
  echo "Checking out $current_branch"
  git checkout "$current_branch"
  echo "Merging master"
  git merge master
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/andrewjordaan/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/andrewjordaan/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/andrewjordaan/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/andrewjordaan/google-cloud-sdk/completion.zsh.inc'; fi

. /usr/local/opt/asdf/libexec/asdf.sh
