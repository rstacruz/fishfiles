if set -q XDG_RUNTIME_DIR
    if ! pgrep -u "$USER" ssh-agent >/dev/null
        ssh-agent -c >"$XDG_RUNTIME_DIR/ssh-agent.env.fish"
    end

    if test -z "$SSH_AUTH_SOCK"
        if test -f "$XDG_RUNTIME_DIR/ssh-agent.env.fish"
            eval (cat "$XDG_RUNTIME_DIR/ssh-agent.env.fish") >/dev/null
        end
    end
end
