function windows_where --description "where.exe in WSL"
    /mnt/c/Windows/System32/where.exe $argv[1] |
        tr -d '\015' | # dos2unix
        head -n 1 |
        string replace --all '\\' / |
        string replace 'C:' /mnt/c
end
