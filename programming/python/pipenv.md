# Pipenv

Pipenv helps create and maintain virtual environments. It is a bit easier (and more robust when the system Python version changes) than runnind `virtualenv` directly.

## Get Started

In the project directory:

```shellsession
pipenv install PACKAGE
```

This creates `Pipfile` and `Pipfile.lock` in the project directory.

## Dev Dependencies

Install development packages only for the development environment:

```shellsession
pipenv install --dev pylint pytest
```

## Run Commands

Run a command in the virtual environment:

```shellsession
pipenv run COMMAND ARGUMENTS
```

For example: start the Python script `main.py`:

```shellsession
pipenv run python main.py
```

### Shell session

Start a shell within the virtual environment:

```shellsession
pipenv shell
```

## Visual Studio Code

Sometimes VS Code can have trouble finding the Python interpreter within the virtual environment. You can fix this by starting VS Code from a command line inside the virtual env shell. This should fix the issue and allow selecting the Python interpreter of the environment (so that VS Code is aware of the installed packages).
