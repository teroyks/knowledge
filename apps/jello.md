A command-line tool for handling JSON – similar to jq, but uses a Python-like syntax.

[Repository](https://github.com/kellyjonbrazil/jello)

## Recipes

### Pretty Print

Just pipe the JSON to Jello.

```shell
cat file.json | jello
```

### Pick Object

```shell
echo '{"foo": {"a": 1}, "bar": "baz"}' | jello '_.get("foo")'
{
  "a": 1
}
```

You can nest `get` commands.

```shell
echo '{"foo": {"a": [1, 2, 3]}, "bar": "baz"}' | jello '_.get("foo").get("a")'
[
  1,
  2,
  3
]
```

### Output Values as Plain Text

```shell
echo '{"array": [1, 2]}' | jello -rl '_.get("array")'
1
2
```

### Pick Property from Array of Objects

```shell
echo '[{"id": 1, "foo": "bar"}, {"id": 2}]' | jello '[item.id for item in _]'
[
  1,
  2
]
```
