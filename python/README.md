# Python Algorithm Examples

## Prerequisites

- Python (see `.python-version` in repo)
    - Recommend installing via pyenv
- pipenv 
    - Available via Homebrew

## Getting Started

> ℹ️ All commands below are meant to be run from the repo's `python` directory.

Install dependencies:

```shell
PIPENV_VENV_IN_PROJECT="enabled" pipenv sync -d
```

> ℹ️ `PIPENV_VENV_IN_PROJECT="enabled"` allows VSCode to find the environment setup by pipenv.

Run the tests:

```shell
pipenv run pytest
```