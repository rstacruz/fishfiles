begin
    if type -q $HOME/.local/bin/mise
        if status is-interactive
            $HOME/.local/bin/mise activate fish | source
        else
            $HOME/.local/bin/mise activate fish --shims | source
        end
    end
end
