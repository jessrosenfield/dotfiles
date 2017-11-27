alias ..='cd ../'
alias .2='cd ../../'                        # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels

alias ll='ls -alhF'
alias la='ls -A'

alias gco='git checkout'
__git_complete gco _git_checkout
alias gcb='git checkout -b'
alias gcp='git cherry-pick'
alias gs='git status'
alias gia='git add'
__git_complete gia _git_add
