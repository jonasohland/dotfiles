set SPACEFISH_TIME_SHOW true
set SPACEFISH_DATE_SHOW true

set SPACEFISH_EXIT_CODE_SHOW true

set SPACEFISH_GIT_STATUS_COLOR D0D
set SPACEFISH_GIT_BRANCH_COLOR 0C3


if test -e ~/.fb_access.fish
    source ~/.fb_access.fish
end

set -x GPG_TTY (tty)
set -x FISH_ASYNC_LAST_LOG ""

if type -q thefuck
    thefuck --alias | source
end

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish ; or true

if test -e ~/.iterm2_shell_integration.fish
    source ~/.iterm2_shell_integration.fish
end

if type -q starship
    starship init fish | source
end

if type -q tmux
    if status is-interactive
    and not set -q TMUX
        if tmux ls | grep -q MAIN
            exec bash -c "(tmux ls | grep -vq attached && tmux at) || tmux"
        else
            exec tmux new-session -d -s MAIN /usr/bin/fish
        end
    end
end
