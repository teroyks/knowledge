# Hatch Configuration

The project configuration is mainly stored in `pyproject.toml`.
Some configs can be managed outside the project, for example by setting environment variables.

## Global Configuration

The Global configuration for Hatch is stored in `config.toml`.
The file is located in an OS-dependent directory by default.
The default can be overridden by setting the `HATCH_CONFIG` environment variable
to point to the correct `config.toml` path.

```shell
# Fish example:
set --export --universal HATCH_CONFIG ~/.config/hatch/config.toml
```

Open the config location in the file manager:

```shell
hatch config explore
```

## Virtual Environments Location

Set (for example) `~/.virtualenvs.hatch` as the location for virtual environments.

```shell
hatch config set dirs.env.virtual ~/.virtualenvs.hatch
```

## Project Settings

See [project configuration](./hatch-project-configuration.md).
