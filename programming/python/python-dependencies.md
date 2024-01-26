# Dependency Handling

## Upgrade Package and Dependencies

`pip install --upgrade --upgrade-strategy=eager PACKAGE_NAME`

## Checking for Package Version

```python
# pip install packaging

package_name = "PACKAGE_NAME_HERE"
required_version = "1.2.3"

from importlib.metadata import version as get_package_version
current_version = get_package_version(package_name)

from packaging.version import parse as parse_version
assert parse_version(current_version) >= parse_version(required_version), (
    f"A newer version of {package_name} (at least {required_version}) is required."
)
```
