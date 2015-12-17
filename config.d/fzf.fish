# you may need to do /usr/local/opt/fzf/install first.
#
# ctrl-T - fuzzy complete a file
# ctrl-R - fuzzy complete from history
if test -d ~/.fzf
  set -gx FZF_DEFAULT_COMMAND 'ag -g ""'
  fzf_key_bindings
end
