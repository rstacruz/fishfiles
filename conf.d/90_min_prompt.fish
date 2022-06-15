echo (date +%T.%3N) (status -f)
if test -n "$MIN_PROMPT"
  function fish_prompt
    _min_prompt
  end
end
