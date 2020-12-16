# Using Anonymous Classes

## Anonymous Instance

```php
<?php
class Foo {
    static function getValue() {
        return "I am foo\n";
    }
}

echo Foo::getValue(); // I am foo

$anon = new class() extends Foo {
    static function getValue() {
        return "I am anonymous\n";
    }
};

echo $anon::getValue(); // I am anonymous
```
