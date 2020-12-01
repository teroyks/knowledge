# PHP Stuff

## Ellipses Syntax

In a function definition: collect all remaining parameters as an array (replaces `func_get_args`).

```php
function foo($first, ...$rest)
```

In a function call: spread an array out to individual function parameters (replaces `call_user_func_array`).

```php
myFunc(...$arr);
```

Inside a function: flatten arrays into one (alternative to `array_merge`, since 7.4).

```php
$arr1 = [1, 2];
$arr2 = [3, 4];
[...$arr1, ...$arr2] == [1, 2, 3, 4];
```
