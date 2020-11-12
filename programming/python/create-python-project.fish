function create-python-project --argument projectname
    if not command -sq pipenv
        echo "'pipenv' is not found in path: please install it first." >&2
        return 1
    end

    if not test -n "$projectname"
        echo Usage: create-python-project project_name >&2
        return 1
    end

    if test -d $projectname
        echo Directory $projectname already exists >&2
        return 1
    end

    mkdir $projectname
    cd $projectname

    # initialize virtual environment
    pipenv install

    # install developer tools
    pipenv install --dev pylint autopep8 pytest

    # create project directories
    mkdir src
    mkdir tests

    # add pytest support to VS Code
    mkdir .vscode
    printf "\
{
    \"python.testing.pytestArgs\": [
        \"tests\"
    ],
    \"python.testing.unittestEnabled\": false,
    \"python.testing.nosetestsEnabled\": false,
    \"python.testing.pytestEnabled\": true
}
" >.vscode/settings.json

    # ignore python builds and .env files
    printf "\
__pycache__
*.pyc

.env
" >.gitignore

    # configure pytest so it finds modules under src/
    echo "PYTHONPATH=src" >.env
    # include a sample environment file in a git repository
    cp .env example.env

    # add a dummy test to see pytest is working
    printf "\
def test_pytest():
    \"\"\"Check that pytest is configured properly.\"\"\"
    assert True
" >tests/test_pytest.py

    echo Done
    echo
    echo Run the tests:
    echo pipenv run pytest
end
