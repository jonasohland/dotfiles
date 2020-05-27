set -g fish_user_paths "/usr/local/opt/llvm/bin" $fish_user_paths

set SPACEFISH_TIME_SHOW true
set SPACEFISH_DATE_SHOW true

set SPACEFISH_EXIT_CODE_SHOW true

set SPACEFISH_GIT_STATUS_COLOR D0D
set SPACEFISH_GIT_BRANCH_COLOR 0C3


if test -e ~/.fb_access.fish
    source ~/.fb_access.fish
end

set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -x GPG_TTY (tty)
set -x FISH_ASYNC_LAST_LOG ""
# set -x LC_ALL en_US.UTF-8

<<<<<<< Updated upstream
if type -q thefuck
    thefuck --alias | source
end
=======
# thefuck --alias | source
>>>>>>> Stashed changes

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish ; or true

if test -e ~/.iterm2_shell_integration.fish
    source ~/.iterm2_shell_integration.fish
end

if type -q starship
    starship init fish | source
end
