function update-abbreviations-git
  if type -q chezmoi
    echo "✓ Chezmoi"
    abbr che 'chezmoi'
    abbr chez 'chezmoi'
  end

  if type -q gh
    abbr PR 'gh pr create'
    abbr pr 'gh pr'
    abbr prc 'gh pr checkout'
    abbr prb 'gh pr view --web'
    abbr prlist 'gh pr list --search "-is:draft"'
  else
    echo "(Skipping GitHub abbreviations - 'gh' not found)"
  end

  if type -q git
    echo "✓ Git"
    abbr g    'git'

    # 3-letter shortcuts
    abbr add    'git add'
    abbr che    'git checkout'
    abbr cob    'git checkout -b'
    abbr com    'git commit -v'
    abbr fet    'git fetch'
    abbr mer    'git merge'
    abbr pul    'git pull'
    abbr pur    'git pull --rebase'
    abbr pus    'git push'
    abbr reb    'git rebase'
    abbr sta    'git stash'

    # Smaller abbrevations
    abbr amend  'git commit --amend -v'
    abbr fetch  'git fetch'
    abbr merge  'git merge'
    abbr pull   'git pull'
    abbr pure   'git pull --rebase'
    abbr push   'git push'
    abbr rebase 'git rebase'
    abbr stash  'git stash'

    # Macros
    abbr gaa  'git add --all .'
    abbr gcd  'cd (git rev-parse --show-toplevel)'
    abbr gfr  'git fetch; and git reset --hard'
    # abbr gpr  'git pull --rebase'
    abbr g,   'git add --all .; git commit -m (read -p \'git status -s; echo "Commit: "\')'
    abbr g.   'git add --all .; and git commit -m Update'
    abbr g..  'git add --all .; and git commit -m Update; git pull --rebase; git push' # sync for things like notes, etc

    abbr PUSH 'git push --set-upstream origin (git rev-parse --abbrev-ref HEAD) --force-with-lease'
    abbr PULL 'git fetch; and git reset --hard origin/(git rev-parse --abbrev-ref HEAD)'
  end

  if type -q ag
    abbr gg 'ag --pager \'less -RFX\''
  end
end

function update-abbreviations-git-ohmyzsh
  # see https://github.com/robbyrussell/oh-my-zsh/wiki/Cheatsheet
  # if type -q git
  #   abbr gbs       'git bisect'
  #   abbr gbsb      'git bisect bad'
  #   abbr gbsg      'git bisect good'
  #   abbr gbsr      'git bisect reset'
  #   abbr gbss      'git bisect start'

  #   abbr gc        'git commit -v'
  #   abbr gc!       'git commit -v --amend'
  #   abbr gca       'git commit -v -a'
  #   abbr gca!      'git commit -v -a --amend'
  #   abbr gcan!     'git commit -v -a --no-edit --amend'
  #   abbr gcans!    'git commit -v -a -s --no-edit --amend'
  #   abbr gcam      'git commit -a -m'
  #   abbr gcsm      'git commit -s -m'
  #   # abbr gcmsg     'git commit -m'
  #   abbr gcs       'git commit -S'

  #   abbr gco       'git checkout'
  #   abbr gcb       'git checkout -b'
  #   # abbr gcm       'git checkout master'
  #   # abbr gcd       'git checkout develop'

  #   abbr gcp       'git cherry-pick'
  #   abbr gcpa      'git cherry-pick --abort'
  #   abbr gcpc      'git cherry-pick --continue'

  #   abbr gf        'git fetch'
  #   abbr gfa       'git fetch --all --prune'
  #   abbr gfo       'git fetch origin'

  #   abbr gd        'git diff'
  #   abbr gdca      'git diff --cached'
  #   abbr gdt       'git diff-tree --no-commit-id --name-only -r'
  #   abbr gdw       'git diff --word-diff'

  #   abbr gcf       'git config --list'
  #   abbr gcl       'git clone --recursive'
  #   abbr gclean    'git clean -fd'
  #   abbr gpristine 'git reset --hard && git clean -dfx'
  #   abbr gcount    'git shortlog -sn'
  #   abbr gdct      'git describe --tags `git rev-list --tags --max-count=1`'
  #   abbr ggsup     'git branch --set-upstream-to=origin/(git rev-parse --abbrev-ref HEAD)'
  #   abbr gignore   'git update-index --assume-unchanged'
  #   abbr gignored  'git ls-files -v | grep "^:lower:"'
  #   abbr gk        'gitk --all --branches'
  #   abbr grt       'cd $(git rev-parse --show-toplevel || echo ".")'
  #   abbr gsd       'git svn dcommit'
  #   abbr gsps      'git show --pretty = short --show-signature'
  #   abbr gsr       'git svn rebase'
  #   abbr gts       'git tag -s'
  #   abbr gunignore 'git update-index --no-assume-unchanged'
  #   abbr gvt       'git verify-tag'
  #   abbr gwch      'git whatchanged -p --abbrev-commit --pretty = medium'

  #   abbr gr        'git remote'
  #   abbr grup      'git remote update'
  #   abbr grv       'git remote -v'

  #   abbr gm        'git merge'
  #   abbr gmt       'git mergetool --no-prompt'

  #   abbr gl        'git pull'
  #   abbr ggpnp     'git pull origin (git rev-parse --abbrev-ref HEAD) && git push origin (git rev-parse --abbrev-ref HEAD)'
  #   abbr ggpull    'git pull origin (git rev-parse --abbrev-ref HEAD)'
  #   abbr ggl       'git pull origin (git rev-parse --abbrev-ref HEAD)'
  #   abbr ggpur     'git pull --rebase origin (git rev-parse --abbrev-ref HEAD)'
  #   abbr glum      'git pull upstream master'
  #   abbr gup       'git pull --rebase'

  #   abbr gsta      'git stash save'
  #   abbr gstaa     'git stash apply'
  #   abbr gstd      'git stash drop'
  #   abbr gstl      'git stash list'
  #   abbr gstp      'git stash pop'
  #   abbr gsts      'git stash show --text'

  #   abbr gp        'git push'
  #   abbr gpoat     'git push origin --all && git push origin --tags'
  #   abbr ggpush    'git push origin (git rev-parse --abbrev-ref HEAD)'
  #   abbr ggp       'git push origin (git rev-parse --abbrev-ref HEAD)'

  #   abbr gg        'git gui citool'
  #   abbr gga       'git gui citool --amend'

  #   abbr gss       'git status -s'
  #   abbr gst       'git status'

  #   abbr glg       'git log --stat --max-count=10'
  #   abbr glgg      'git log --graph --max-count=10'
  #   abbr glgga     'git log --graph --decorate --all'
  #   abbr glo       'git log --oneline --decorate --color'
  #   abbr glog      'git log --oneline --decorate --color --graph'
  #   abbr glp       '_git_log_prettily (git log --pretty=$1)'

  #   abbr grmv      'git remote rename'
  #   abbr grrm      'git remote remove'
  #   abbr grset     'git remote set-url'

  #   abbr grba      'git rebase --abort'
  #   abbr grbc      'git rebase --continue'
  #   abbr grbs      'git rebase --skip'
  #   abbr grbi      'git rebase -i'

  #   abbr grh       'git reset HEAD'
  #   abbr grhh      'git reset HEAD --hard'
  # end
end
