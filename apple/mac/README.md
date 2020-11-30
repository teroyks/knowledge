# Misc. Mac & MacOS Stuff

## The Operating System

The official name (and spelling) of the OS is _macOS_ (“mac o-s”, /ˌmækoʊˈɛs/). Until 2016, it was called _Mac OS X_ (“[mac o-s ten](https://support.apple.com/kb/TA22541)”).

## Security

### Erase an Encrypted Drive

An encrypted volume can be erased with Disk Utility without knowing the decryption password (the contencts will be erased) – just select the volume or drive and click _Erase_.

## Startup

Startup keys for Intel Macs:

- ⌘-R – recovery mode
- ⌥ – startup manager
- ⌥-⌘-P-R – Reset NVRAM/PRAM
- ⇧ – safe mode
- D – diagnostics
- N – start up from a NetBoot server
- ⌘-S – single-user mode
- T – target disk mode
- ⌘-V – verbose mode
- Eject/F12/Mouse button/Trackpad button – eject removable media

Setting a firmware passwords asks for the password when booting to recovery mode or startup manager, and disables the other modes.

## Touch ID

Use `sudo` with touch ID: add the following line to `/etc/pam.d/sudo`:

```shell
session    required       pam_permit.so
```
