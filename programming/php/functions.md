# PHP Functions

## Return Type for Function

The return type for a function that returns a function is `callable`:

```php
function mkFunc(): callable
{
    return function () {
        // ...
    };
}
```

## Binding `this`

If an anonumous function is defined inside a class method, it automatically binds (and can use) `$this`.

Using `$this` makes the anonymous function impure (unless the class is a value object). Declare function `static` to avoid automatic binding (recommended).

## Lambdas

```php
$factor = 6;
$multi = fn(int $a): int => $a * $factor;
print $multi(9); // 54”
```

- body must be a single expression
- return value is the expression value
- auto-capture implicitly closes over scope variables

## Memoization

Instead of putting a static variable inside a function (eg. a cache), create a wrapper that _memoizes_ the pure function.

```php
function memoize(callable $fn): callable
{
    return function(...$args) use ($fn) {
        static $cache = [];
        $key = serialize($args);
        if (!isset($cache[$key])) {
            $cache[$key] = $fn(...$args);
        }
        return $cache[$key];
    };
}

function multiply(int $a, int $b): int
{
    return $a * $b;
}

$multiplier = memoize('multiply');

print $multiplier(3, 5); // Prints 15
print $multiplier(4, 6); // Prints 24
print $multiplier(3, 5); // Prints 15 _from cache_
```

(Example from: Larry Garfield. “Thinking Functionally in PHP”.)
