# https://github.com/bpinto/oh-my-fish/blob/master/functions/restore_original_fish_colors.fish
set fish_color_command cyan --bright
set fish_color_param normal

# https://wiki.archlinux.org/index.php/Fish#Web_interface
# fish git prompt
set __fish_git_prompt_showcleanstate 'yes'
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'verbose'

# set __fish_git_prompt_color_branch black
set __fish_git_prompt_color_dirtystate red
set __fish_git_prompt_color_cleanstate black
set __fish_git_prompt_color_stagedstate green
set __fish_git_prompt_color_upstream green
set __fish_git_prompt_color_untrackedfiles yellow

# Status Chars
set __fish_git_prompt_char_cleanstate '•'
set __fish_git_prompt_char_dirtystate '•'
set __fish_git_prompt_char_stagedstate '•'
set __fish_git_prompt_char_untrackedfiles '•'
set __fish_git_prompt_char_stashstate ''
set __fish_git_prompt_char_upstream_equal '' #(set_color green)'✓'
set __fish_git_prompt_char_upstream_prefix ''
set __fish_git_prompt_char_upstream_ahead ' +'
set __fish_git_prompt_char_upstream_behind ' -'
set __fish_git_prompt_char_upstream_diverged ' ↔'

function fish_prompt_rsc_vi --description "Displays the current mode"
  switch $fish_bind_mode
    case default
      set_color cyan
      echo -n -e " (vi mode)"
    case insert
      echo -n -e "          " 
    case visual
      set_color --bold white
      echo -n -e " (visual) "
  end
  set_color normal
end

function fish_prompt_rsc --description 'Prompt'
  set -l color1 blue
  set -l color black
  set -l last_status $status

  echo ""
  echo -n " "

  set -l gitroot (printf '%s' (git rev-parse --show-toplevel 2>/dev/null))

  # -- pwd
  set_color $color1
  if test -n "$gitroot"
    set -l gitsubdir (pwd | sed -e "s|^$gitroot||")
    echo -n (basename $gitroot)

    set_color normal
    if test -n "$gitsubdir"
      echo -n "$gitsubdir"
    end
      set_color $color
      echo -n " —"
  else
    echo -n (prompt_pwd)
  end
  set_color normal

  # -- normal?
  if not set -q __fish_prompt_normal
    set -g __fish_prompt_normal (set_color normal)
  end

  # -- git
  printf '%s' (echo (__fish_git_prompt) | sed -e 's|(||' | sed -e 's|)||')

  # -- glyph
  if not test $last_status -eq 0
    set_color $fish_color_error
    echo -n ' ✗  '
  else
    set_color $color
    echo -n ' →  '
  end

  set_color normal
end

function fish_prompt --description 'Write out the prompt'
  fish_prompt_rsc $argv
end

function fish_mode_prompt --description 'Write out the prompt'
  # fish_prompt_rsc $argv
  fish_prompt_rsc_vi
end
