# Capture Command Output

```php
ob_start(); // capture STDOUT  

print('Hello');

$output = ob_get_contents();  
ob_end_clean(); // clean buffer and turn off buffering

// $output == 'Hello'
```
