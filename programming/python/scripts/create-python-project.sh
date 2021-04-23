#!/bin/bash
# Creates a skeleton Python 3 project with:
# - pipenv configuration
# - pytest
# - code formatter and linter

# Prerequisites:
# pipenv needs to be installed

which pipenv >/dev/null 2>&1 || (
    echo "'pipenv' not found in path: please install it first'" >&2
    exit 1
)

# Usage: create-python-project.sh DIRNAME

if [ -z $1 ]; then
    echo "Usage: $(basename $0) project_name" >&2
    exit 1
fi

if [ -d $1 ]; then
    echo "Directory '$1' already exists" >&2
    exit 1
fi

# Create the project directory

PROJECT_DIR=$1
mkdir $PROJECT_DIR
cd $PROJECT_DIR

# Initialize the virtual environment

pipenv install

# Install developer tools

pipenv install --dev pylint pytest
pipenv install --dev --pre black

# Create the project structure

mkdir src
mkdir tests

# Add pytest support to VS Code

mkdir .vscode
cat << EOF > .vscode/settings.json
{
    "python.formatting.provider": "black",
    "python.testing.pytestArgs": [
        "tests"
    ],
    "python.testing.unittestEnabled": false,
    "python.testing.nosetestsEnabled": false,
    "python.testing.pytestEnabled": true
}
EOF

# Download default .gitignore if `wget` is available.
# Otherwise ignore python builds and .env files

which wget >/dev/null 2>&1 && {
    wget https://raw.githubusercontent.com/github/gitignore/master/Python.gitignore --output-document .gitignore
} || {
cat << EOF > .gitignore
__pycache__
*.pyc
.env
EOF
}

# Configure pytest so it finds modules under src/

cat << EOF > .env
PYTHONPATH=src
EOF

# Create a sample env file that will be included in the Git repository

cp .env sample.env

# Add a dummy test to check that pytest is working

cat << EOF > tests/test_pytest.py
def test_pytest():
    """Check that pytest is configured properly."""
    assert True
EOF

cat << INSTRUCTIONS

--------------------
Done

Run the tests:
cd $PROJECT_DIR
pipenv run pytest
INSTRUCTIONS
