#  Git checkout helpers
#     * gco: Overridde gco to default to going back to master
#     * gfco: Fetch a branch from origin and check out locally
#     * gfm: Refresh master and merge it into local branch
# ====================

unalias gco

function gco() {
  if [[ "$#" == 0 ]]; then
    git checkout $(git_main_branch)
  else
    git checkout ${*}
  fi
}
compdef _git gco=git-branch

function gfco() {
  # if [[ "$#" != 1]]; then
  #   echo "Usage: $0 branch-name"
  #   return 1
  # else
  git fetch origin "$1":"$1" && git checkout $1
}
alias gpmm='git fetch origin "$(git_main_branch)":"$(git_main_branch)" && git merge "$(git_main_branch)"'
alias gpmr='git fetch origin "$(git_main_branch)":"$(git_main_branch)" && git rebase "$(git_main_branch)"'


#  Git branch deletion helpers
#     * gbd: Override gbd to default to deleting the branch you are currently on and move to master
#  ==========================

unalias gbd
unalias gbD
# unalias gbda

function gbd() {
  if [[ "$#" == 0 ]]; then
    local b="$(git_current_branch)" && git checkout "$(git_main_branch)"
  else
    local b=${*}
  fi
  git branch -D $b
}
compdef _git gbd=git-branch


#  Git workflow helpers
#    * gbls: list local git branches ordered by branches with most recent commits
#  ====================

function git_branch_info() {
  local branch="$1"
  local info="$(git log $branch -1 --format=reference)"
  echo $branch $info
}
compdef _git git_branch_info=git-branch


alias gbls='git for-each-ref --color=always --sort=-committerdate refs/heads/ --format='"'"'%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"'"' | head -10'

