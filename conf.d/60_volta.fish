# Integration for Volta (https://volta.sh/)
# After installing Volta, you'll then be able to use
# Volta with this

begin
    if test -d "$HOME/.volta"
        set -gx VOLTA_HOME "$HOME/.volta"
        set -gx VOLTA_FEATURE_PNPM 1
        string match -r ".volta" "$PATH" >/dev/null; or set -gx PATH "$VOLTA_HOME/bin" $PATH
    end
end
