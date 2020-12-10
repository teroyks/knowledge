# Working with Files in Python

## Conditional Create

Only create a file and write to it if it doesn’t already exist.

```python
try:
    with open('my_file.txt', 'x') as fh:
        fh.write('file content here')
except FileExistsError:
    pass
```
