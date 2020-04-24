function _min_git_branch --description "Parse current Git branch name"
    command git symbolic-ref --short HEAD 2>/dev/null;
        or command git name-rev --name-only HEAD 2>/dev/null
end

function _min_prompt --description "Prompt"
    echo ''

    if test "$__minprompt_last" != (pwd) -a -n "$__minprompt_last"
      # echo (set_color red)'── '(prompt_pwd)' '(_min_git_branch)
    end
    set  -g __minprompt_last (pwd)

    echo -n (set_color red)(basename (prompt_pwd))' → '
end
