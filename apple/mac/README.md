# Misc. Mac & MacOS Stuff

## The Operating System

The official name (and spelling) of the OS is _macOS_ (“mac o-s”, /ˌmækoʊˈɛs/). Until 2016, it was called _Mac OS X_ (“[mac o-s ten](https://support.apple.com/kb/TA22541)”).

## Files

### Locking a File

A locked file can’t be renamed or deleted without confirming the operation (Finder) or using root privileges (command line).

- To lock a file in Finder: _Get Info → Locked_
- in Preview or other apps that support this: choose _Locked_ in file name view
- `SetFile -a L FILE` in a terminal (lowercase-l to unlock)

## Security

### Erase an Encrypted Drive

An encrypted volume can be erased with Disk Utility without knowing the decryption password (the contencts will be erased) – just select the volume or drive and click _Erase_.

### Cryptographic Erase

Not really needed, but an even more secure way of erasing a drive:

1. Enable FileVault in _System Preferences > Security & Privacy_. Write down the password.
2. Restart in Recovery mode.
3. Launch Disk Utility.
4. Select the boot disk > _Unlock_ from the _File_ menu. Enter the FileVault password.
5. Erase the disk normally.
6. Reinstall MacOS.

_(from [the Mac Observer](https://www.macobserver.com/tips/how-to/securely-erase-macs-ssd/))_

## Share Screen

In Messages, open a chat, click on the round `i` icon, and select either _Share My Screen_ or _Ask to Share Screen_.

## Startup

### Intel

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

### Apple Silicon

Startup to recovery mode for Apple silicon Macs:

1. Turn off the computer.
2. Turn it on and hold down the power button.
3. Select the options icon from the startup screen.
4. Enter the admin password if asked.

## Touch ID

Use `sudo` with touch ID: add the following line to `/etc/pam.d/sudo`:

```shell
session    required       pam_permit.so
```
