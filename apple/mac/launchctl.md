# Scheduled Jobs with `launchctl`

- create a job file in [plist format](https://developer.apple.com/library/archive/documentation/MacOSX/Conceptual/BPSystemStartup/Chapters/CreatingLaunchdJobs.html)
- save in `~/Library/LaunchAgents`
- use name `{label-string}.plist`
- load with `launchctl load {/path/to/plist-file}`

## List Jobs

```shell
launchctl list
```
