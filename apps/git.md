# Git

## Stage Files

- `git add <file>` – stage `file`
- `git add -A` – stage all unstaged files in the working tree; also remove deleted files from repo
- `git add -p` – interactively stage hunks from diff

## Commit Files

- `git commit -v` – commit staged files, show differences being committed in the message editor

Avoid the `-m` flag – it encourages writing one-line commit messages that are usually too short for proper explanation of what (and esp. why) was changed.

- a good [article](https://chris.beams.io/posts/git-commit/) on writing commit messages
- [gitmoji](https://gitmoji.carloscuesta.me) are a handy way to add visual cues (and some whimsy) to what the commits are about (I enter them with the help of an [Alfred workflow](../apple/mac/alfred/README.md#workflows))

## List Branches

- `git branch`

## Switch Branches

- `git switch <branch-name>`
- `git switch -` – switch back to the previous branch

### Switch to a New Branch

- `git switch -c <new-branch-name>`
- `git switch -c <new-branch-name> --track <remote>/<branch>` – set created branch to track a remote branch

## Restore Working Tree

- `git restore <path>`
- `git restore -s <tree> [<path>]` – restore with contents from source `tree`
- `git restore -p <path>` – patch: interactively select hunks from diff

## [Configuration](https://git-scm.com/docs/git-config)

### Access Configuration Values

- `git config core.pager` – output `core.pager` configuration value
- `git config core.filemode true` – set the `core.filemode` configuration value for this repository
- `git config --global user.name "My Name"` – set `user.name` globally (global is default; repository can override)
- `git config --unset diff.renames` – delete config entry for `diff.renames`

### Aliases

Some of my aliases:

- `git lg1` – display log in a pretty one-line format, with graph
- `git logn` – display log with graph and names of changed files
- `git undo-commit` – undo latest commit

```etc
alias.lg1=log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)'
alias.logn=log --name-status --graph
alias.undo-commit=reset --soft HEAD^
```

### Other Useful Settings

- `color.ui=true` – use color in the command output
- `commit.tempate=FILE` – use FILE as template for commit messages
  - Use `#` or `;` to add comments to your template file
- `core.autocrlf=input` – do not do line ending conversion
- `core.filemode=true` – honor file executable bit in the working tree
- `core.pager=delta` – use [delta](https://github.com/dandavison/delta) as default pager (needs to be installed separately)
- `init.defaultBranch` – use something other than `master` as the default branch for new repositories

A couple of macOS-specific ones:

- `core.ignorecase=true` – work better with a case-insensitive filesystem (e.g. on a Mac)
- `core.precomposeunicode=true` – revert the Unicode decomposition of filenames done by macOS

## Scripts

Some scripts to help with managing version control.

- [repo updates](https://github.com/teroyks/git-helpers) – help manage local branches (remove when remote is gone)
- [multi-repo status](https://github.com/teroyks/gitmstatus) – finds and updates all repositories under the current directory
