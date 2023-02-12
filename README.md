
# dotfiles
Various config files

# Setup

## Storing dotfiles

1. Init repo: `git init $HOME/.cfg`
2. Add this alias: `alias config='/usr/bin/git --git-dir=$HOME/.cfg/.git/ --work-tree=$HOME'`
3. Don't show untracked files: `config config --local status.showUntrackedFiles no`
4. Add files: `config add .vimrc`
5. Commit and push

## Installing dotfiles

1. `echo ".cfg" >> .gitignore`
2. `git clone <remote-git-repo-url> $HOME/.cfg`
3. `alias config='/usr/bin/git --git-dir=$HOME/.cfg/.git --work-tree=$HOME'`
4. `config config --local status.showUntrackedFiles no`
5. `config checkout`
