# ssh hostname first
set -gx pure_prompt_begin_with_current_directory false
set -gx pure_color_ssh_user_normal (set_color brblack)
set -gx pure_color_ssh_user_root (set_color brred)
set -gx pure_color_ssh_host (set_color brgreen)
set -gx pure_color_ssh_separator (set_color brblack)

# the glyph
# set -gx pure_symbol_prompt "─"

set -gx pure_symbol_prompt "->"
set -gx pure_symbol_reverse_prompt "|>"

set -gx pure_symbol_git_unpulled_commits "↓ "
set -gx pure_symbol_git_unpushed_commits "↑ "
set -gx pure_symbol_git_dirty " ·"
