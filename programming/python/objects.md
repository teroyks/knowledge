# Python Objects

(_Everything is an object._ So this is more about classes.)

## Immutable Data Object

### With `data_object`

Prerequisite: install the `data_object` package.

```python
from data_object import ImmutableDataObject

class FooBar(ImmutableDataObject):
    def __init__(self, foo, bar):
        self.foo = foo
        self.bar = bar

inst = FooBar('abc', 'xyz')
print(inst)      # CustomImmutableClass: {"bar": xyz, "foo": abc}
inst.foo         # 'abc'
inst.foo = 'aaa' # data_object.exceptions.ImmutableObjectViolation
```

### With `dataclass`

≥ 3.7

```python
from dataclasses import dataclass

@dataclass(frozen=True)
class InventoryItem:
    """Class for keeping track of an item in inventory."""
    name: str
    price: float
    quantity: int = 0

    def with_price(self, price):
        """Create a copy with a new price.
        
        Return a new InventoryItem
        """
        return self.__class__(self.name, price, self.quantity)


    def total_cost(self) -> float:
        return self.price * self.quantity

item = InventoryItem(name='foo', price=10, quantity=2)
print(item.total_cost()) # 20

# item.price = 12 # FrozenInstanceError

print(item.with_price(12).total_cost()) # 24
print(item.total_cost()) # 20 - item is not changed
```

## Object to JSON

Serialize an object to a JSON string without converting to ASCII
(Works if an object is serializable to JSON).

```python
json.dumps(my_object, ensure_ascii=False)
```
