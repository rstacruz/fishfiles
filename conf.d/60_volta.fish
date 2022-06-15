# Integration for Volta (https://volta.sh/)
# After installing Volta, you'll then be able to use
# Volta with this

if test -d "$HOME/.volta"
  set -gx VOLTA_HOME "$HOME/.volta"
  test -s "$VOLTA_HOME/load.fish"; and source "$VOLTA_HOME/load.fish"

  string match -r ".volta" "$PATH" > /dev/null; or set -gx PATH "$VOLTA_HOME/bin" $PATH
end
