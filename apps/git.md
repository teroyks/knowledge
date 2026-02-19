# Git

## Stage Files

- `git add <file>` – stage `file`
- `git add -A` – stage all unstaged files in the working tree; also remove deleted files from repo
  - `git add .` does the same with modern Git versions
- `git add -p` – interactively stage hunks from diff

## Commit Files

- `git commit -v` – commit staged files, show differences being committed in the message editor

Avoid the `-m` flag – it encourages writing one-line commit messages that are usually too short for proper explanation of what (and esp. why) was changed.

- a good [article](https://chris.beams.io/posts/git-commit/) on writing commit messages
- [gitmoji](https://gitmoji.carloscuesta.me) are a handy way to add visual cues (and some whimsy) to what the commits are about (I enter them with the help of an [Alfred workflow](../apple/mac/alfred/README.md#workflows))

### Uncommit – Remove Directory from Repository

To remove the directory `foo` from the tracked files, but leave the directory in the workspace:

1. Add `foo/` to `.gitignore`
2. Remove the folder from local tracking: `git rm -r --cached foo/`
3. Commit changes

### Ignore Files in Commit (without `.gitignore`)

Add the file to `.git/info/exclude`.

## List Branches

- `git branch`

### Show Current Branch

≥ 2.22

```shellsession
git branch --show-current
```

Older Git:

```shellsession
git rev-parse --abbrev-ref HEAD
```

### Show Current Tracking Branch

```shellsession
git status -sb | perl -ne '/^##.*\.{3}(.*)/ && print $1;'
```

### Show Deleted Files

```shellsession
git reflog --diff-filter D --name-only
```

### Show Last Merged Branch

```shellsession
reflog_message=$(git reflog -1)
echo $reflog_message | cut -d" " -f 4 | sed "s/://"
```

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

## See Who Made Changes

Show line-by-line list of who last updated a file:

```shellsession
git blame <file>
```

### Line Revisions

Example: changes to line 15:

```shellsession
git log -L15,+1:'path/to/your/file.txt'
```

### Ignore Revisions

It is sometimes handy to ignore some commits, for example if the code has been reformatted but you want to see who last made meaningful changes.

Add the revisions (full commit hash) to be ignored to a file, for example `.git-blame-ignore-revs`, for example:

```text
# Migrate text to new indentation format
a9e84db48f4c4103294d0ee13793389b16ea9153
```

Now you can ignore those commits when running the blame command:

```shellsession
git blame <file> --ignore-revs-file .git-blame-ignore-revs
```

You can also ignore the revisions automatically in your repository:

```shellsession
git config blame.ignoreRevsFile .git-blame-ignore-revs
```

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

## Symbolic References

Make `main` point to the `master` branch:

```shell
git symbolic-ref refs/heads/main refs/heads/master
git symbolic-ref refs/remotes/origin/main refs/remotes/origin/master
```

With this, you can use both `master` and `main` interchangeably.

## Scripts

Some scripts to help with managing version control.

- [repo updates](https://github.com/teroyks/git-helpers) – help manage local branches (remove when remote is gone)
- [multi-repo status](https://github.com/teroyks/gitmstatus) – finds and updates all repositories under the current directory
