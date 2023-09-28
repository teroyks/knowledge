# Useful Unix Commands

## [column](https://www.man7.org/linux/man-pages/man1/column.1.html)

Standard utility that formats its input into multiple columns.

### Examples

- `column -t -s '|'` -- format fields separated by `|` into a table

## nl

Line numbering filter – pipe text to it to number the lines.

```shell
$ echo -e "foo\nbar\nbaz" | nl
     1    foo
     2    bar
     3    baz
```

## numfmt

Formats numbers between “raw” format, SI, and IEC (1024-based) versions.

Example: format bytes to a human-readable number:

```shellsession
echo 6574588073 | numfmt --to=iec
# 6.6G
```

## paste

Merges lines of files.

Paste all lines in FILE together into a comma-separated list:

```shellsession
paste -s -d, FILE
```

To paste command output instead of file contents, use command substitution (see [bash & zsh](../programming/bash#command-substitution), [fish](../programming/fish#command-substitution)).

## seq

Generates a sequence of numbers

Default is to start with one:

```shellsession
» seq 3
1
2
3
```

Set both start and end:

```shellsession
» seq 4 7
4
5
6
7
```

## shasum

Print or Check SHA Checksums

## stdbuf

Control buffering. For example: set output to unbuffered for any command (here `grep`):

```shellsession
stdbuf -o0 grep "pattern"
```
