# Add bin/ to the fish user paths
if not contains $HOME/.config/fish/bin $PATH
  set --prepend PATH $HOME/.config/fish/bin
end

if not contains $HOME/bin $PATH && test -d $HOME/bin
  set --prepend PATH $HOME/bin
end

# For pip3
# if test -d ~/.local/bin
#   set -gx PATH ~/.local/bin $PATH
# end
