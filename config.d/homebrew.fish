# Fetch github password via OSX keychain and use it for Homebrew
set -l token (echo "host=github.com" | git credential-osxkeychain get | head -n 1 | cut -d = -f 2 )
if test -n "$token"
  export HOMEBREW_GITHUB_API_TOKEN=$token
end
