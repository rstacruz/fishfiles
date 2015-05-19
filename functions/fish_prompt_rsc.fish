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
