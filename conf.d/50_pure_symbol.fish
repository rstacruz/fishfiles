# ssh hostname first
set -gx pure_prompt_begin_with_current_directory false
set -gx pure_color_ssh_user_normal (set_color cyan)
set -gx pure_color_ssh_user_root (set_color red)

# the glyph
set -gx pure_symbol_prompt "─"

set -gx pure_symbol_git_arrow_down "▼ "
set -gx pure_symbol_git_arrow_up "▲ "
set -gx pure_symbol_git_dirty " ★"
