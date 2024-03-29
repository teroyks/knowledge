# My Mac Settings

These are some of the settings I like to configure for my Macs. Some are done with [BetterTouchTool](bettertouchtool.md), some with [Alfred](alfred/README.md), and some with standard Mac settings.

## System Settings

Control Center

- Show in Menu Bar:
  - Wi-Fi
  - Bluetooth
  - Sound
- Show When Active:
  - Focus
  - Screen Mirroring
  - Display
  - Now Playing

## Keyboard Shortcuts

- ⇪: [Act as Hyper Key ✧](bettertouchtool.md#caps-lock-as-hyper-key)
- ⌘Space: Alfred
- ✧Space: Alfred Snippet
- ⇧⌃Space: Open Fantastical Mini Window
- ⇧⌥Space: Spotlight Search
- ✧C: Toggle Caps Lock
- ✧V: Show Pastebot Clipboard
- ⇧⌥⌘←: Move Window Left
- ⇧⌥⌘→: Move Window Right

### Rectangle

- ⌃⌘←: Move Left
- ⌃⌘→: Move Right

## Safari

### Settings

- _General > Open “safe” files after downloading_: disable to never automatically open files without asking

### Useful Extensions

- Consent-o-Matic: handle GDPR consent forms
  - allow _Preferences and Functionality_
- Hush: closes cookie notifications etc.
- JSON Peep: view JSON in a readable format
- StopTheMadness: disables web page shenanigans (such as “prevent copying”)

## Terminal

- Command: `/bin/zsh`
  - my login shell is [`fish`](/programming/fish/) and my default terminal is [iTerm2](/apps/iterm2.md)
  - I use Terminal as the “backup/default” Mac terminal
- Profiles > Keyboard > Use option as Meta key
  - For example, ⌥⌫ deletes the previous word with this setup
