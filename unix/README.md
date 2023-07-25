# Miscellaneous Unix Stuff

## Filesystem

- `fs_usage` reports system calls and page faults related to the filesystem (requires root)

### Find Broken Symbolic Links

```shell
find . -type l -print | perl -nle '-e || print';
```

## Mail

Send e-mail with attachment (including binary files) from the command line (Bash)

```shell
( echo "Text part of e-mail"; uuencode <filename> <filename> ) | mailx -s <Subject> <Recipient>
```

## Name Services

- hostname -> IP mappings are in `/etc/hosts`
- look into `/etc/resolv.conf` for DNS settings (on macOS that is not used but points to the right command)

### Fix /etc/hosts

If `/etc/hosts` does not seem to work, the file format might be corrupted. Some things to check:

- file format should be us-ascii (`file -I /etc/hosts`), with Unix line breaks
- file permissions should be `0644`, and the owner `root`

## Just Because

These things probably aren’t all that useful, but I’ve written them down just in case someone wants them for inspiration.

### List File Sizes

List all the files in a directory from largest to smallest in a table, with human-readable sizes. (Flag combination `-sh` does not work on BSD which is why parsing is done from the long listing.)

```shell
ls -lhS | perl -ne 'chomp; @cols = split / +/; $size = $cols[4]; $name = join " ", @cols[8..$#cols]; print "$name|$size\n" if $name;' | column -t -s '|'
```
