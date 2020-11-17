# Useful Unix Utilities

## [column](https://www.man7.org/linux/man-pages/man1/column.1.html)

Standard utility that formats its input into multiple columns.

### Examples

- `column -t -s '|'` -- format fields separated by `|` into a table

## [fd-find](https://lib.rs/crates/fd-find)

A fast and more user-friendly alternative to `find`.

### Examples

- `fd pattern` -- find every occurrence of `pattern` (`find -iname '*pattern*'`)
- `fd -e jpg -x convert {} {.}.png` -- convert JPEG files to PNGs
- `fd -x wc -l \; -e md` -- count the lines in Markdown files

## [ripgrep](https://github.com/BurntSushi/ripgrep)

A supercharged and very fast search tool that replaces much of the need for both `grep` and `git grep`. Output is formatted in a much nicer way. Search is recursive by default.

### Examples

- `rg -tpy foo` -- search only Python files
- `rg -Tjs foo` -- search everything except JavaScript files
- `rg foo -g '*Test.php'` -- search only files with names matching the glob
