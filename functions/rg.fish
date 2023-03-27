# Via https://github.com/BurntSushi/ripgrep/issues/86#issuecomment-386998224
function rg
    if isatty stdout
        command rg -p $argv | less -RMFXK
    else
        command rg $argv
    end
end
