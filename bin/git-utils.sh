#!/usr/bin/env bash
# Provides common helpers for git utilities.
#
#     brn=$(git_branch)     #=> "master"
#     url=$(github_url)     #=> "https://github.com/rstacruz/nprogress"
#     rep=$(github_repo)    #=> "rstacruz/nprogress"
#     prj=$(github_project) #=> "nprogress"
#

trap "exit 1" TERM
pid=$$

# Dies of an error.
die() {
  echo $* 1>&2; kill -s TERM $pid
}

# Echoes the current branch.
git_branch() {
  git rev-parse --abbrev-ref HEAD
}

# Echoes the current git repo's github url.
github_url() {
  giturl=$(git config --get remote.origin.url)
  if [ -z "$giturl" ]; then die "Not a git repository; can't get 'origin' url"; fi
 
  giturl=${giturl/git\@github\.com\:/https://github.com/}
  giturl=${giturl/\.git/}
  echo $giturl
}

# Returns the current git repo's project in user/project format.
github_repo() {
  url=$(github_url)
  echo ${url/https:\/\/github.com\//}
}

# Echoes the github project name.
github_project() {
  repo=$(github_repo)
  echo ${repo/[^\/]*\//}
}

# Echoes the users Github username Prompts the user if unavailable.
#
#     username=$(github_username)
#     # Github username: rstacruz_
#    
github_username() {
  github_get_credential username
}

# Echoes the users Github password. Prompts the user if unavailable.
github_password() {
  github_get_credential password
}

# Internal
github_get_credential() {
  credentials=$(echo "host=github.com" | git credential-osxkeychain get | grep $1)
  if [ -n "$credentials" ]; then echo ${credentials/[^=]*=/}; return; fi

  echo -n "Github $1: " >&2
  read input
  if [ "$input" = 'n' ]; then die "git $1 required."; fi
  echo $input
}
