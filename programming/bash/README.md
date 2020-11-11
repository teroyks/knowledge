# Bash Scripting

_Note: many of the things here can also apply to pure Bourne shell (sh), zsh, etc. – collected under “Bash” since that’s what I’ve used the most._

## Current Directory

```shell
basename $PWD
```

## Eternal Loop

```shell
while true; do
    # ...
done
```

## Exit Codes

- see [sysexits](http://www.manpagez.com/man/3/sysexits/)

Testing for command execution failing:

```shell
if (( $? )); then
    # last command was not successful
    # if you need the exit code, save it before testing
    # because the if test overrides it
fi
```

## Test External Commands

### Command Exists

```shell
which COMMAND >/dev/null 2>&1 || (
    echo "command not found"
    exit 1
)
```

Saving the command path into variable for use:

```shell
cmd=$(which COMMAND 2>/dev/null)
if [ -z "$cmd" ]; then
    # command not found
fi
```

### Command Version

```shell
# getting the version is different for each command
GIT_VERSION=$(git --version | cut -d' ' -f3)
REQUIRED_VERSION=2.29.0

if [[ $GIT_VERSION < $REQUIRED_VERSION ]]; then
    die "Error: git version $REQUIRED_VERSION or newer required; current version is $GIT_VERSION"
fi
```