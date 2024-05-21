# Bash Scripting

_Note: many of the things here can also apply to pure Bourne shell (sh), zsh, etc. – collected under “Bash” since that’s what I’ve used the most._

## Command Substitution

Use command output instead of file contents.

Example: print out files as a comma-separated list

```shellsession
paste -s -d, <(ls)
```

## Current Directory

```shell
basename $PWD
```

### Script Directory

Find out full path to the script dir

```shell
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
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

Recommended: test exit code directly:

```shell
if command
then
    # last command was successful
fi

if ! command
then
    # last command was not successful
    # if you need the exit code, save it before testing
fi
```

Not usually recommended: run command first, test exit code separately:

```shell
if (( $? )); then
    # last command was not successful
    # if you need the exit code, save it before testing
    # because the if test overrides it
fi
```

## External Commands

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

### Output Redirection

Pipe only STDERR to a program, preserve STDOUT:

```shell
exec 3>&1; script-name 2>&1 >&3 3>&- | mailx -s "only errors" e@mail; exec 3>&-
```

Redirect STDOUT to file , pipe STDERR to a program:

```shell
script-name 2>&1 >/dev/null | mailx -s "only errors" e@mail
```

### Read Command Output

Read COMMAND output line by line.
`-r`: no backslash escaping.

```shell
while read -r LINE
do
    # handle $LINE
done < <(COMMAND)
```

## Output Colors

See [attached script](term-colors.sh) for examples of outputting color text with [ANSI escape codes](https://en.wikipedia.org/wiki/ANSI_escape_code).
