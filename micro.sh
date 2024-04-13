# Source
# https://jonsuh.com/blog/git-command-line-shortcuts/

alias micro-gitpull='find . -mindepth 1 -maxdepth 1 -type d -print  -exec  git -C {} checkout master \; -exec git -C {} pull \;'
alias micro-gitpush='find . -mindepth 1 -maxdepth 1 -type d -print -exec git -C {} push \;'
alias micro-npmi='find . -mindepth 1 -maxdepth 1 -type d -print -exec  npm -C {} install \;'
alias micro-gitcommit='echo "Enter commit name: " && read commit_name && find . -mindepth 1 -maxdepth 1 -type d -print -exec git -C {} add "." \; -exec git -C {} commit -m $commit_name \;'
alias micro-gitcheckout='echo "enter branch name: " && read branch_name && find . -mindepth 1 -maxdepth 1 -type d -print -exec git -C {} checkout -b $branch_name \;'

function micro-gh-review() {
  echo 'micro-gh-review initiated it may take few minutes'
  for dir in $(ls -d */); do
    cd $dir
    echo 'Editing pr for :'$dir
    gh pr edit --add-label="pending review" --remove-label="in progress" || echo "Error: editing the pr for repo in $dir"
    cd ..
    echo 'Edited pr for :'$dir
    echo '---------------------'
  done
}

function micro-gh-create() {
  echo "Add title :"
  read title
  echo "Add body : "
  read body
  for dir in $(ls -d */); do
    cd $dir
    echo 'creating pr for :'$dir
    gh pr create -t $title -b $body --label="in progress" || echo "Error: Failed to push changes in $dir"
    cd ..
  done
}

# use in conjuction i.e gh search prs "Bump jwt to 9.0.0" --author anujjindal58 | get-pr-links
function get-pr-links() {
  while read -r line; do
    url=$(echo $line | awk '{print "https://github.com/" $1 "/pull/" $2}')
    echo $url
  done
}

# i.e gh search prs "Bump jwt to 9.0.0" --author anujjindal58 | get-pr-links | gh-pr-qa
function gh-pr-qa() {
  while read -r line; do
    gh pr edit $line --add-label="pending qa" --remove-label="pending review"
  done
}

function git-clean() {
  for dir in $(ls -d */); do
    cd $dir
    echo 'creating pr for :'$dir
    git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d || echo "Error: Cleaning local branches $dir"
    cd ..
  done
}

alias ghcs='gh copilot suggest'
alias ghcp='gh copilot preview'
alias ghce='gh copilot explain'
