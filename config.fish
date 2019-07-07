set -g fish_user_paths "/usr/local/opt/llvm/bin" $fish_user_paths

set SPACEFISH_TIME_SHOW true
set SPACEFISH_DATE_SHOW true

set SPACEFISH_EXIT_CODE_SHOW true

set SPACEFISH_GIT_STATUS_COLOR D0D
set SPACEFISH_GIT_BRANCH_COLOR 0C3


if test -e ~/.fb_access.fish
    source ~/.fb_access.fish
end
