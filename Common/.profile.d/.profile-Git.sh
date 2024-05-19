
# -- Aliases
# Git
## git log
alias glast='git log -1 --stat'
alias glg='git lg'
#alias glg='git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit'
## git status
alias gs='git status'
alias gss='git status -s'
## git branch
alias gbavv='git branch -avv'
alias gbvv='git branch -vv'
## git push
alias gp='git push'
alias gpf='git push -f'
alias gpod='git push origin --delete'
## git remote
alias gruop='git remote update origin --prune'

# NB: "_functions_binary_presence.sh" must be sourced
if_binary_exists_do gs "alias ghostscript=\gs"

# @see:
# https://gist.github.com/DavidToca/3086571
# https://coderwall.com/p/euwpig/a-better-git-log
# https://opensource.com/article/20/11/git-aliases
# https://snyk.io/fr/blog/10-git-aliases-for-faster-and-productive-git-workflow/
