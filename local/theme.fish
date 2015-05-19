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

function fish_prompt_rsc_vi --description "Displays the current mode"
  switch $fish_bind_mode
    case default
      set_color --bold cyan
      echo -n "◆ "
    case insert
      set_color --bold white
      echo -n "  "
    case visual
      set_color --bold red
      echo -n "↔ "
  end
  set_color normal
end

function fish_prompt_rsc --description 'Prompt'
  set -l color1 blue
  set -l color black
  set -l last_status $status
  set -l gitroot (printf '%s' (git rev-parse --show-toplevel 2>/dev/null))

  echo ""
  echo -n " "

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
  else
    set_color $color
  end

  echo -n '  →  '
  set_color normal
end

function fish_prompt --description 'Write out the prompt'
  fish_prompt_rsc $argv
end

function fish_vi_prompt --description 'Write out the prompt'
  fish_prompt_rsc $argv
  fish_prompt_rsc_vi
end
