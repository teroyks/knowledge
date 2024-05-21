# Hatch and `uv`

You can use `uv` instead of the default `venv` to manage your virtual environments.

## Activate UV For Project

Add the following to the `pyproject.toml` file:

```toml
 [tool.hatch.envs.default]
 installer = "uv"
```

This will use `uv` to install the virtual environment in the default location.
You can override the default location by adding a `path` setting to the section.
