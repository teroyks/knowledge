# Evolvable Value Object

An evolvable value object is an immutable object with methods to spawn new instances with different values.

For example:

```php
interface Person {
    public function getName(): string;
    public function withName(string $newName): self;

    public function getAddress(): ?string;
    public function withAddress(string $newAddress): self;
    public function withoutAddress(): self;
}
```

An evolvable implementation where you cannot change the private values, only return a new object:

```php
class EvolvablePerson implements Person {
    private string $name;
    private ?string $address;

    public function __construct(string $requiredName, ?string $optionalAddress = null) {
        $this->name = $requiredName;
        $this->address = $optionalAddress;
    }

    public function getName(): string {
        return $this->name;
    }

    public function withName(string $newName): self {
        return new static($newName, $this->address);
    }

    public function getAddress(): ?string {
        return $this->address;
    }

    public function withAddress(string $newAddress): self {
        return new static($this->name, $this->newAddress);
    }

    public function withoutAddress(): self {
        return new static($this->name);
    }
}
```

Usage examples:

```php
$person = (new EvolvablePerson('My Name'))
    ->withAddress('My Address');
// name = "My Name"
// address = "My Address"

$person
    ->withName('New Name');
// name = "New Name"
// address = "My Address"

// $person was not changed!
$person
    ->withoutAddress();
// name = "My Name"
// address = NULL
```
