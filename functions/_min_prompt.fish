# Todo:
# - [x] git
# - [x] git dirty
# - [ ] git unpushed
# - [ ] git unpulled
# - [ ] vi indicator
# - [ ] error message
# - [ ] branch name an switch
# - [ ] ssh
# - [ ] find out why (...) fails
function _min_prompt --description "Prompt"
  set -l gitroot (_min_git_root)
  set -l show_extra 0

  echo ''

  if ! test -n "$gitroot"
    echo -n (_min_color path)(prompt_pwd)' '(_min_glpyh)' '
  else
    echo -n (_min_pwd "$gitroot")(_min_show_git_branch)(_min_glyph_prefix)(_min_glpyh)' '
  end

end

function _min_show_git_branch
  set -l branch (_min_git_branch)
  if test $branch = 'master'
    set_color normal
  else
    echo (_min_color branch)' '$branch
  end
end


function _min_glpyh --description "The glyph"
  _min_color glyph_normal
  echo -n '›'
end

function _min_glyph_prefix --description "Git status prefix"
  if _min_git_dirty
    _min_color glyph_dirty
    echo -n ' · '
  else
    echo -n ' '
  end
end

function _min_git_dirty --description 'Checks if a git repo has changes'
  test (git status -s | wc -c) -ne 0
end

function _min_git_root --description "Print the git root"
  printf '%s' (command git rev-parse --show-toplevel 2>/dev/null)
end

function _min_color
  if test $argv[1] = 'glyph_dirty'
    set_color green
  else if test $argv[1] = 'glyph_normal'
    set_color brblack
  else if test $argv[1] = 'branch'
    set_color brblack
  else if test $argv[1] = 'repo'
    set_color -o bryellow
  else if test $argv[1] = 'path'
    set_color red
  else
    set_color normal
  end
end

function _min_pwd -d "Prints pwd based on Git root"
  set -l gitroot $argv[1]
  set -l gitsubdir (pwd | sed -e "s|^$gitroot||")

  set -l prefix (
    _min_color repo
    echo -n (_min_color repo)(basename $gitroot)
  )

  if test (pwd) = $gitsubdir
    echo -n $prefix(_min_color path)' @ '$gitsubdir
  else
    echo -n $prefix(_min_color path)$gitsubdir
  end
end

function _min_git_branch --description "Parse current Git branch name"
    command git symbolic-ref --short HEAD 2>/dev/null
    or command git name-rev --name-only HEAD 2>/dev/null
    or echo -n ''
end

# function _min_is_home --description "Check if the pwd is the home dir"
#     test (pwd) = "$HOME"
# end

# function _min_track_pwd --description "If this key changes, then print more info"
#     _min_git_root
#     or pwd
# end
