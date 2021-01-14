# Useful Unix Commands

## [column](https://www.man7.org/linux/man-pages/man1/column.1.html)

Standard utility that formats its input into multiple columns.

### Examples

- `column -t -s '|'` -- format fields separated by `|` into a table

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
