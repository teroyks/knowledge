# Simple Python Project Setup

## Prerequisites

These steps are needed once, not for every new Python project

1. Install and configure [pyenv](https://github.com/pyenv/pyenv).
2. Install [virtualenv](https://pypi.org/project/virtualenv/).
3. Install the Python version you want to use, for example: `pyenv install 3.10.4`.

## Setting up the project

Create a project directory:

```shell
mkdir my_project
cd my_project
```

Set the Python version for the project:

```shell
pyenv local 3.10.4
```

Create a virtual environment under the project directory:

```shell
python -m venv .my_project_env
```

Activate the virtual environment (in Bash):

```shell
source .my_project_env/bin/activate
```

Or, in Fish:

```shell
source .my_project_env/bin/activate.fish
```

## Next Steps

This is just about the simplest project configuration, with no extra tooling or anything. Next things to consider might be for example:

- Save your virtual environments in one place, for example `~/.virtualenvs`, instead of in the project directory.
- Use something like `piptools` to manage dependency updates, etc.

To go all-in with project setup, tooling, etc., check out [Hypermodern Python](https://cjolowicz.github.io/posts/hypermodern-python-01-setup/).
