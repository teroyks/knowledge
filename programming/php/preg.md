# Regular Expressions in PHP

## Run a Callback on Matches

```php
<?php
/**
 * Appends a running number to matched strings,
 * ie. first match "N" becomes "N1", second "N2", etc.
 */

$str = 'x x x A x x x AA x x x A x x x';

$addNumberToDelimiter = function ($delimiter) {
    static $count = 1;
    return implode('', $delimiter) . $count++;
};
$result = preg_replace_callback('/A+/', $addNumberToDelimiter, $str);

print $result; // 'x x x A1 x x x AA2 x x x A3 x x x'
```
