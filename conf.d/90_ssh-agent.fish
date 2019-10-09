if ! pgrep -u "$USER" ssh-agent > /dev/null
    ssh-agent -c > "$XDG_RUNTIME_DIR/ssh-agent.env.fish"
end

if test -z "$SSH_AUTH_SOCK"
    eval (cat "$XDG_RUNTIME_DIR/ssh-agent.env.fish") >/dev/null
end
