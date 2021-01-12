# Iteration

## Cycle Through a List

```python
import itertools as it

items = [1, 2]
current_item = it.cycle(items)

next(current_item) # 1
next(current_item) # 2
next(current_item) # 1
# ...
```

## Read Multiple Inputs

```python
for line in iter(input, ''):
    print(line)
```

With specific prompt:

```python
for line in iter(lambda : input('> '), ''):
    print(line)
```
