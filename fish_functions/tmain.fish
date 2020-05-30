function tmain
tmux switch -t MAIN && tmux kill-session -t (tmux display -p '#S')
end
