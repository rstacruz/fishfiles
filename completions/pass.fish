complete -c pass -x
complete -c pass -s c -l clip --description "Copy to clipboard"

complete -c pass -n '__fish_use_subcommand' -a "help" -d "Show help"
complete -c pass -n '__fish_use_subcommand' -x -a "grep" -d "Search for password files"
complete -c pass -n '__fish_use_subcommand' -x -a "generate" -d "Generates a password"
complete -c pass -n '__fish_use_subcommand' -x -a "rm" -d "Removes a password"
complete -c pass -n '__fish_use_subcommand' -x -a "cp" -d "Copies a password"
complete -c pass -n '__fish_use_subcommand' -x -a "mv" -d "Moves a password"
complete -c pass -n '__fish_use_subcommand' -x -a "ls" -d "Lists passwords"
complete -c pass -n '__fish_use_subcommand' -x -a "find" -d "Finds passwords matching pass names"
complete -c pass -n '__fish_use_subcommand' -x -a "init" -d "Initialize new password storage"

complete -c pass -n "__fish_seen_subcommand_from rm cp mv generate" -s f -l force
complete -c pass -n "__fish_seen_subcommand_from rm" -s r -l recursive
complete -c pass -n "__fish_seen_subcommand_from generate" -s n -l no-symbols
complete -c pass -n "__fish_seen_subcommand_from generate" -s i -l in-place
complete -c pass -n "__fish_seen_subcommand_from init" -s p -l path

set -l files (pushd $HOME/.password-store; for fn in **/*.gpg; echo $fn | sed 's/\.gpg//'; end; popd)

complete -c pass -x -a "$files"
