# Dictionary Handling

## Construct

```python
k = {'red':21, 'green':68, 'blue':120, 'alpha':52 }
```

With keywords:

```python
k = dict(red=21, green=68, blue=120, alpha=52)
```

## Merge Dictionaries

from 3.9

```python
a = { 'foo': 1, 'bar': 2, 'baz': 3 }
b = { 'new': True, 'foo': 'override' }
a | b # {'foo': 'override', 'bar': 2, 'baz': 3, 'new': True}
```

## Minimum Value

```python
min(my_dict, key=my_dict.get)
```
