# Testing With Pytest

## Useful Options

- `--ff` – fail fast: stop on first failure
- `--lf` – run the last failing test
- `-k STRING_EXPRESSION` – run tests with names that match the (case-insensitive) Python expression
- `--nf` – run only new test cases since last run
- `--pdb` – start the [debugger](https://docs.python.org/3/library/pdb.html) when a test fails

## Examples

Run the test(s) that failed last, go into debugger on fail:

```python
pytest --lf --pdb
```

Run all tests with filenames that contain `MyClass` but do not contain `foo`:

```python
pytest -k "MyClass and not foo"
```

Run a specific test within a module:

```python
pytest test_mod.py::test_func
```

## Resources

- [Pytest guide](https://stribny.name/blog/pytest/)
