# -- Tools
# [Kubernetes]
## [`k`] (Alias)
alias k='kubectl'
# Bash completion for "k" as "kubectl"
source <(kubectl completion bash)
complete -o default -F __start_kubectl k

## [`kubecolor`]
alias kubectl="kubecolor"
# Bash completion for "kubecolor" as "kubectl"
complete -o default -F __start_kubectl kubecolor
