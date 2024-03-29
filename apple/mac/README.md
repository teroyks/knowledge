# Misc. Mac & MacOS Stuff

## The Operating System

The official name (and spelling) of the OS is _macOS_ (“mac o-s”, /ˌmækoʊˈɛs/). Until 2016, it was called _Mac OS X_ (“[mac o-s ten](https://support.apple.com/kb/TA22541)”).

### Low Power Mode

Enable/disable via Command line:

```console
# enable
sudo pmset -a lowpowermode 1

# disable
sudo pmset -a lowpowermode 0
```

via [OSXDaily](https://osxdaily.com/2022/03/30/enable-low-power-mode-mac-command-line/)

### OS Icons

Go to `/System/Library/CoreServices/CoreTypes.bundle/Contents/Resources` to see the OS icon files.

_(from [Six Colors](https://sixcolors.com/post/2021/05/quick-tip-high-quality-mac-icons-are-coming-from-inside-your-mac/))_

## Files

### Locking a File

A locked file can’t be renamed or deleted without confirming the operation (Finder) or using root privileges (command line).

- To lock a file in Finder: _Get Info → Locked_
- in Preview or other apps that support this: choose _Locked_ in file name view
- `SetFile -a L FILE` in a terminal (lowercase-l to unlock)

### Open/Save

Type `/` in any open/save dialog to open a “Go to Folder” dialog for quick navigation. (Also supports the `~` shortcut for the home directory.)

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

### Verify FileVault Recovery Key

```console
sudo fdesetup validaterecovery
```

Enter the key when prompted.

## Screen Saver

(macOS 11)

If the screen saver is stuck, try the following keystroke sequence to recover (locks the computer, goes to the login screen):

Mac, full-sized keyboard:

- ⌃-⇧-[eject]

Mac, small keyboard:

- ⌃-⇧-[power]

Other keyboards, or if the above doesn’t help:

- ⌃-⌘-Q
- ⎋ (esc)

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

[Fallback recovery mode](https://eclecticlight.co/2021/02/20/m1-macs-have-another-hidden-boot-mode/):

1. Turn off the computer.
2. Double-press and hold down the power button.

## Touch ID

Use `sudo` with touch ID: add the following line to `/etc/pam.d/sudo`:

```shell
session    required       pam_permit.so
```

## Software Links

## Audio

- [Loopback](https://rogueamoeba.com/loopback/) – pass audio from one application to another, pull audio from multiple sources into one virtual device
- [NoTunes](https://github.com/tombonez/noTunes) – prevent Apple Music from launching (e.g. when connecting Bluetooth headphones, or pressing the play/pause key)

## Video

- [HandBrake](https://handbrake.fr/) – a free (open source) utility for converting video
- [Iina](https://iina.io) – very nice, free (open source) native Mac video player
- [DaVinci Resolve](https://www.blackmagicdesign.com/products/davinciresolve/) – all-in-one video editing software (free version)
  
## Utilities

Some useful utilities and enhancements for system apps

- [CCleaner](clean up gigabytes of cache files, internet history files, and locate and purge large files) – clean up cache files, internet history files, and locate and purge large files
- [Hush](https://oblador.github.io/hush/) – blocks most cookie & privacy nagging screens in Safari
- [LaunchControl](https://www.soma-zone.com/LaunchControl/) – a `launchd` GUI; worth the price if you ever need to edit the launchd service configurations
- [MailTrackerBlocker](https://apparition47.github.io/MailTrackerBlocker/) – blocks tracking pixels in Apple Mail
- [PowerDirector Essentials](https://www.cyberlink.com/powerdirector-free-download-video-editing-software) – video editor with a generous free version ([recommended](https://www.macworld.com/article/347808/best-free-video-editing-software-for-mac.html))
- [Script Debugger](https://latenightsw.com) – AppleScript editor & debugger, includes a free lite version
- [Smartmontools](https://www.smartmontools.org) – control and monitor storage systems (SSD) ([more](https://www.macworld.com/article/334283/how-to-m1-intel-mac-ssd-health-terminal-smartmontools.html))
- [Unexpectedly](http://s.sudre.free.fr/Software/Unexpectedly/about.html) – a free Mac application that lets you browse and visualize the reports from crashes that happened on your Mac
