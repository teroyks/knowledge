# Python Type Hinting

## Generic Collections

≥ 3.9

`dict`, `list`, `set`, `frozenset` can be used (instead of `Dict`, etc. from typing).

## Custom Types

```python
from typing import NewType

UserId = NewType('UserId', int)
some_id = UserId(524313)

def get_user_name(user_id: UserId) -> str:
    ...

# typechecks
get_user_name(UserId(42351))

# does not typecheck; an int is not a UserId
get_user_name(-1)
```
