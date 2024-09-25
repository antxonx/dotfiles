alias gitlg="git log --graph --abbrev-commit --decorate --format=format:'@%C(bold blue)%h%C(reset)@%C(bold green)(%ar)%C(reset)@%C(white)%s%C(reset) [%C(dim white)%an%C(reset)%C(auto)]@%d%C(reset)' --all --color=always | column -t -s '@'"
# export EDITOR=nvim
alias tns="tmux new-session -s"
alias tas="tmux attach -t"
alias tls="tmux ls"
alias gprc="gh pr create -B dev"
alias gpre="gh pr edit"
alias tmx="tmuxifier"
