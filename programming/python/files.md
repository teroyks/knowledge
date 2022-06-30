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

## Handle File Path

≥ 3.4

Create a `Path` object with `pathlib` and [combine paths with slashes](https://medium.com/@ageitgey/python-3-quick-tip-the-easy-way-to-deal-with-file-paths-on-windows-mac-and-linux-11a072b58d5f):

```python
from pathlib import Path

data_folder = Path('source_data/text_files/')
file_path = data_folder / 'raw_data.txt'
```

This is secure even if the original path is empty (will default to `.` and leave it _and_ the slash out when combining paths).

`Path` can also check file properties and extract components. See
[examples](https://gist.github.com/teroyks/eb04baf99d8a921af4f29c51b1b2f347).

## Remove File That May Not Exist

```python
import contextlib
from pathlib import Path

my_file = Path("path/to/file")

with contextlib.suppress(FileNotFoundError):
    my_file.unlink()
```

≥ 3.8:

```python
my_file.unlink(missing_ok=True)
```

## Streams (File-like IO)

[See buffers](buffers.md)

## Compressed Files

[See zip files](zip-files.md)