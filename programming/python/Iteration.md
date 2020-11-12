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
