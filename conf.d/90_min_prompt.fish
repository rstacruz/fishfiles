if test -n "$MIN_PROMPT"
  function fish_prompt
    echo ''
    echo -n (set_color green)'-> '
  end
end
