# Lists

## Remove Item

Remove first matching item:

```python
l.remove(item)
```

Remove all occurrences of `match`:

```python
[item for item in l if item != match]
```

Remove nth element (zero-based):

```python
l.pop(n)
```

## Find First Match in List

Return the first matching item in a list (or any iterable) of objects, or `None` if no match found (similar to JavaScript’s `find` function):

```python
next((item in iterable_of_items if item.id == match_id), None)
```

(Without the default value, will raise `StopIteration` if no match is found.)
