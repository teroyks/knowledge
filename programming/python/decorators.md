# Decorators

## Example: Escape Unicode

```python
def escape_unicode(f):
    def wrapper(*args, **kwargs):
        uc_str = f(*args, **kwargs)
        return ascii(uc_str)
    return wrapper
```

### Usage

Without escaping:

```python
def name():
    return 'Vardenė'

name() # 'Vardenė'
```

With escaping:

```python
@escape_unicode
def name():
    return 'Vardenė'

name() # "'Varden\\u0117'"
```
