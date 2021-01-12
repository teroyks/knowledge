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

## Construct File Path

≥ 3.4

Create a `Path` object with `pathlib` and [combine paths with slashes](https://medium.com/@ageitgey/python-3-quick-tip-the-easy-way-to-deal-with-file-paths-on-windows-mac-and-linux-11a072b58d5f):

```python
from pathlib import Path

data_folder = Path('source_data/text_files/')
file_path = data_folder / 'raw_data.txt'
```

This is secure even if the original path is empty (will default to `.` and leave it _and_ the slash out when combining paths).
