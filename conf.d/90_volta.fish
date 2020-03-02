if test -d "$HOME/.volta"
  set -gx VOLTA_HOME "$HOME/.volta"
  test -s "$VOLTA_HOME/load.fish"; and source "$VOLTA_HOME/load.fish"
  string match -r ".volta" "$PATH" > /dev/null; or set -gx PATH "$VOLTA_HOME/bin" $PATH
end

