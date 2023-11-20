# Homebrew

- [macOS migrations with Brewfile](https://openfolder.sh/macos-migrations-with-brewfile)
  - dump currently used packages to a file with `brew bundle dump`
  - install packages from Brewfile with `brew bundle`
  - install macOS apps with `brew cask`
  - install Mac App Store programs with `mas`

## Vendor Completions

Get current Homebrew vendor completions directory for [Fish](/programming/fish/README.md):

```shell
pkg-config --variable completionsdir fish
```

There should be a symlink to the directory at `/opt/homebrew/share/fish/vendor_completions.d`
