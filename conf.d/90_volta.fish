if test -d "$HOME/.volta"
  set -gx VOLTA_HOME "$HOME/.volta"

  if not contains $VOLTA_HOME/bin $PATH
    set -gx PATH "$VOLTA_HOME/bin" $PATH
  end
end
