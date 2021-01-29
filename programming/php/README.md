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

## Exception Handling

### Rethrowing Exceptions

When rethrowing an exception (e.g. to cast into a different type), pass the previous exception as an argument to preserve the stack trace (helps with debugging). If you don’t create a new message and code, pass the originals explicitly as the first two parameters (if you use the caught exception as the first parameter, the stack trace is included in the exception message).

```php
try {
    // may throw an exception here
} catch (Exception $e) {
    // this block is supposed to only thrown a MyException
    throw new MyException($e->getMessage(), $e->getCode(), $e);
}
```

[Example](https://www.tehplayground.com/xBRxbd8rABpRVbUS)
