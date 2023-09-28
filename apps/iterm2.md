# iTerm2 Setup

[iTerm2](https://iterm2.com) is my favorite terminal for the Mac. Some configuring is required, here is what I usually do to set it up:

## Profiles

### Hotkey Window

The special Hotkey Window is a handy temporary window that pops up when you need it and then goes away.

- General > Command: Login Shell
- Window > Style: Full-Width Top of Screen
- Keys: A hotkey opens a dedicated window: ⌃⌘T

## Appearance

These settings need to be set separately for each profile.

- Colors > Color Presets > Pastel (Dark) – more legible than the devault dark theme
- Text > Font > Hack (nerd font)
- Window > Transparency: 20
- Window > Blur: 5
- Window > Settings for New Windows
  - Columns: 120
  - Rows: 50
  - Use transparency

## Keyboard

Natural editing (⌥⌫ deletes a word, ⌘⌫ deletes to the beginning of the line, special characters work with the ⌥ key):

- Profile > Keys:
  - General:
    - Left Option Key: Normal, Apps can change
    - Right Option Key: Normal, Apps can change
  - Key Mappings:
    - Presets: Natural Text Editing (allow deleting old presets)
- *Note: needs to be set separately for each profile*

## Fish Shell Integration

- [Install separately for Fish](https://iterm2.com/documentation-shell-integration.html)
