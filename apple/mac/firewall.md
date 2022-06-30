# macOS Firewall

List apps using the firewall:

```shell
/usr/libexec/ApplicationFirewall/socketfilterfw --listapps
```

Unblock an application in the firewall:

```shell
/usr/libexec/ApplicationFirewall/socketfilterfw --unblockapp /path/to/app
```

[More on Six Colors](https://sixcolors.com/post/2022/06/solving-a-file-sharing-mystery-why-one-mac-cant-see-another/)
