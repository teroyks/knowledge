# Dictionary Handling

## Merge Dictionaries

from 3.9

```python
a = { 'foo': 1, 'bar': 2, 'baz': 3 }
b = { 'new': True, 'foo': 'override' }
a | b # {'foo': 'override', 'bar': 2, 'baz': 3, 'new': True}
```
