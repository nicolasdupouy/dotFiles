# [Ansible (Python PIP directory]
export PYTHON_3_DIRECTORY='~/Library/Python/3.11'
export PATH=$PATH:$PYTHON_3_DIRECTORY/bin
#alias ansible-playbook='$PYTHON_3_DIRECTORY/bin/ansible-playbook'

# For Kubernetes => Minikube => hyperkit (enable qcow)
# OPAM (https://opam.ocaml.org/) is the OCaml Package Manager
# opam configuration
test -r /Users/nicolas/.opam/opam-init/init.sh && . /Users/nicolas/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# [Kubernetes]
alias k='kubectl'
# Bash completion for "k" as "kubecl"
complete -o default -F __start_kubectl k
