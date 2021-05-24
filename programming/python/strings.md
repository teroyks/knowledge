# String Handling

## Remove Prefix or Suffix

from 3.9

```python
txt = 'foo.txt'
txt.removesuffix('txt') # 'foo.'
txt.removeprefix('foo') # '.txt'
```

## Streams (File-like IO)

Handle string IO like a file:
[See buffers](buffers.md)

## Truncate String

Truncate at the Nth characted, add an ellipsis to a truncated string:

```python
str = 'My test string'
n = 5
str[:n] + (str[n:] and '…')
```
