function fish_prompt --description 'Write out the prompt'
  if test "$MIN_PROMPT" = ""
    set_color black
    echo -n ' →  '
    set_color normal
  else
    echo ""
    set_color black
    echo -n '→ '
    set_color normal
  end
end

function fish_mode_prompt --description 'Write out the prompt'
  if test "$MIN_PROMPT" = ""
  else
    fish_prompt_rsc_vi
  end
end
