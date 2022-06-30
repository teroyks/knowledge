# Python Stuff

## Libraries

- [Fractions](https://docs.python.org/3.9/library/fractions.html?highlight=fraction) – rational number arithmetic

## Useful Packages

- [AutoScraper](https://github.com/alirezamika/autoscraper) -- lightweight web scraper
- [Disk Cache](https://pypi.org/project/diskcache/) -- disk/sqlite-backed key-value store
- [jellyfish](https://github.com/jamesturk/jellyfish) -- a library for approximate & phonetic matching of strings
- [PandasGUI](https://github.com/adamerose/pandasgui) -- GUI for analyzing dataframes
- [pycld2](https://pypi.org/project/pycld2/) -- identify language of a text
- [Pydantic](https://pydantic-docs.helpmanual.io/usage/models/) -- define data models with types, constraints, and validation
- [Streamlit](https://www.streamlit.io) -- quickly create data viewer web apps

## Tools

- [create-python-project](scripts/create-python-project.sh) is my (bash) shell script to create a new directory with
  - pipenv
  - linter
  - formatter (todo: try out [Black](https://github.com/psf/black) instead)
  - pytest
  - VS Code setup (todo: add [Black](https://marcobelo.medium.com/setting-up-python-black-on-visual-studio-code-5318eba4cd00))
- [bpython](https://bpython-interpreter.org) -- “fancy interface” to Python: syntax highlighting, autocomplete, parameter list, undo last command, etc.

## Notes, Articles, etc

- [Best of Python](https://github.com/ml-tooling/best-of-python) – a curated list of open-source projects grouped into categories, ranked by a project-quality score
- [Data Classesin Python](https://realpython.com/python-data-classes/) (Guide)
- [Generating documentation with Pycco](https://realpython.com/generating-code-documentation-with-pycco/)
  - auto-generate decent looking code documentation based on docstrings
- [Hypermodern Python](https://cjolowicz.github.io/posts/hypermodern-python-01-setup/) – a comprehensive guide for setting up a python project with all the tooling you might ever want
- [working with large datasets](https://www.kaggle.com/rohanrao/tutorial-on-reading-large-datasets)

## Misc

### Compile files to .pyc

```python
python -m compileall -q .
```

## Examples

### Excel (with Pandas)

[Read an Excel file](https://github.com/teroyks/excel2csv) with Pandas and convert to CSV.
