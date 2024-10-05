# -- Tools
# [Kubernetes]
alias k='kubectl'

# Bash completion for "k" as "kubectl"
source <(kubectl completion bash)
complete -o default -F __start_kubectl k
