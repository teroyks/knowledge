# Fish Shell

Fish if the “friendly, interactive shell”. It's a modern alternative to the more traditional shells such as `bash` and `zsh`.

## Environment

### Edit Path

Append a directory to the path. The `-U´ option makes the setting universal (persists and takes effect in all terminals).

```console
set -U fish_user_paths $fish_user_paths /usr/local/bin
```

## Recipes

### Command Substitution

Use command output instead of file contents by piping to `psub`.

Example: print out files as a comma-separated list

```shellsession
paste -s -d, (ls | psub)
```

### Empty a File

```console
true > FILE
```

### Random Numbers

```shellsession
random 1 10 # generates a random number between 1 and 10 (inclusive)
```
