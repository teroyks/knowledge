# Handling Variables

Test if a variable exists and has a non-empty value:

```shell
if [ -z "$var" ]; then
    # variable does not exist or is empty
fi

if [ -n "$var" ]; then
    # variable exists and has non-empty value
fi
```
