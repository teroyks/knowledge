# Fish Shell

Fish if the “friendly, interactive shell”. It's a modern alternative to the more traditional shells such as `bash` and `zsh`.

## Recipes

### Command Substitution

Use command output instead of file contents by piping to `psub`.

Example: print out files as a comma-separated list

```shellsession
paste -s -d, (ls | psub)
```

### Random Numbers

```shellsession
random 1 10 # generates a random number between 1 and 10 (inclusive)
```
