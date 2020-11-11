# Handling Command-line Arguments

## Test For Argument

```shell
if [ -z $1 ]; then
    echo "No first argument given"
fi
```

## Require Exact Number of Arguments

```shell
if [ $# != 1]; then
    echo "Exactly 1 argument required"
fi
```
