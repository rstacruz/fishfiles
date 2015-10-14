# Used by things like github-release
set -l token (echo "host=github.com" | git credential-osxkeychain get | head -n 1 | cut -d = -f 2 )
if test -n "$token"
  export GITHUB_TOKEN=$token
end
