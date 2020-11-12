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
