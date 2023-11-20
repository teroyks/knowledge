# Add to Existing Completions

To add custom completions without replacing existing ones, source the original completions file in your custom one. For example:

```shell
# myCommand.fish

...

source /opt/homebrew/share/fish/vendor_completions.d/myCommand.fish
```
