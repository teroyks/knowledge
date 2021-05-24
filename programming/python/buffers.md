# IO Buffers
[IO modules](https://docs.python.org/3/library/io.html) StringIO and BufferIO: handle string data like a file.
For example: build output to send to an API.

## Create File Object

Example:

```python
string_out = io.StringIO()
string_out.write('Example String 1 ')
string_out.write('Example String 2 ')
string_out.write('Example String 3 ')
string_out.getvalue()
# 'Example String 1 Example String 2 Example String 3 '
```

More: [Webcul.com](https://webkul.com/blog/using-io-for-creating-file-object/)

