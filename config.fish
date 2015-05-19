[ -f /usr/local/share/autojump/autojump.fish ]; and \
    . /usr/local/share/autojump/autojump.fish

# https://github.com/jeanmertz/chruby-fish
[ -f /usr/local/share/chruby/chruby.fish ]; and \
    . /usr/local/share/chruby/chruby.fish

# https://github.com/zimbatm/direnv/
if which direnv > /dev/null
    eval (direnv hook fish)
end

[ -f ~/.config/fish/local/theme.fish ]; and \
    . ~/.config/fish/local/theme.fish

# so tmux won't complain
export SHELL=/usr/local/bin/fish

# https://wiki.archlinux.org/index.php/Fish#Web_interface
# fish git prompt
set __fish_git_prompt_showcleanstate 'yes'
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showupstream 'yes'

set __fish_git_prompt_color_branch black
set __fish_git_prompt_color_dirtystate red
set __fish_git_prompt_color_cleanstate black
set __fish_git_prompt_color_stagedstate green

# Status Chars
set __fish_git_prompt_char_cleanstate '•'
set __fish_git_prompt_char_dirtystate '•'
set __fish_git_prompt_char_stagedstate '•'
set __fish_git_prompt_char_stashstate ''
set __fish_git_prompt_char_upstream_equal ''
set __fish_git_prompt_char_upstream_ahead '+' # '↑'
set __fish_git_prompt_char_upstream_behind '-' # '↓'

# vi
# fish_vi_mode
