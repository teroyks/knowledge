# Click CLI Helper

## Linter Integration

Pylint doesn’t recognize the annotations so it complains that calling the main function is missing parameters.

Add a nolint directive to the end of the line that calls the function to disable the rule for that line only, for example:

```python
if __name__ == "__main__":
    cli()  # pylint: disable=no-value-for-parameter
```

## Setuptools and Pipenv integration

1. Install `click` & `setuptools` with `pipenv`
2. Start a `pipenv shell`
3. Install the script with `pip install --editable .`

The script will be installed in the virtualenv bin directory.

After the installation you can run the script within the Pipenv shell, or with `pipenv run SCRIPT-NAME`.
