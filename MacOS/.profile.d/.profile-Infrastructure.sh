# -- Tools
# [Kubernetes]
alias k='kubectl'
# Bash completion for "k" as "kubectl"
complete -o default -F __start_kubectl k

# For Kubernetes => Minikube => hyperkit (enable qcow)
# OPAM (https://opam.ocaml.org/) is the OCaml Package Manager
# opam configuration
test -r /Users/nicolas/.opam/opam-init/init.sh && . /Users/nicolas/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

## [`kubecolor`]
alias kubectl="kubecolor"
# Bash completion for "kubecolor" as "kubectl"
complete -o default -F __start_kubectl kubecolor
