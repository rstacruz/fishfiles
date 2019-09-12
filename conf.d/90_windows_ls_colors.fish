# Update LS_COLORS in WSL to prevent unreadable directories
# https://github.com/Microsoft/vscode/issues/7556
if test -f /mnt/c/Windows/explorer.exe
  set -x LS_COLORS 'ow=01;36;40'
end
