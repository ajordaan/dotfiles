
. /usr/local/opt/asdf/asdf.sh
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

. /usr/local/opt/asdf/libexec/asdf.sh

function heroku-rails {
  heroku run rails c -a howler-staging-pr-${1}
}

function open-pr-app {
  open -a "Google Chrome" "https://www.pr-${1}.howlerstaging.co.za"
}

function open-pr {
  open -a "Google Chrome" "https://github.com/howler/Howler/pull/${1}"
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/andrewjordaan/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/andrewjordaan/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/andrewjordaan/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/andrewjordaan/google-cloud-sdk/completion.zsh.inc'; fi

. /usr/local/opt/asdf/libexec/asdf.sh
