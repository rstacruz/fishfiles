# Used by things like github-release and Homebrew
set -l token (echo "host=github.com" | git credential-osxkeychain get | head -n 1 | cut -d = -f 2 )
if test -n "$token"
  set -gx GITHUB_TOKEN $token
  set -gx GITHUB_ACCESS_TOKEN $token
  set -gx HOMEBREW_GITHUB_API_TOKEN $token
end
