set SPACEFISH_TIME_SHOW true
set SPACEFISH_DATE_SHOW true

set SPACEFISH_EXIT_CODE_SHOW true

set SPACEFISH_GIT_STATUS_COLOR D0D
set SPACEFISH_GIT_BRANCH_COLOR 0C3

fzf_configure_bindings --directory=\cf

fish_add_path ~/.cargo/bin

set -x DOCKER_BUILDKIT 1

if test -e ~/.fb_access.fish
    source ~/.fb_access.fish
end

set -x GPG_TTY (tty)
set -x FISH_ASYNC_LAST_LOG ""

if type -q thefuck
    thefuck --alias | source
end

if test -d /opt/clang-format-static
    fish_add_path /opt/clang-format-static
end

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish ; or true

if test -e ~/.iterm2_shell_integration.fish
    source ~/.iterm2_shell_integration.fish
end

# if type -q starship
#     starship init fish | source
# end

