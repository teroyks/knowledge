# Python Objects

(_Everything is an object._ So this is more about classes.)

## Immutable Data Object

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

## Object to JSON

Serialize an object to a JSON string without converting to ASCII
(Works if an object is serializable to JSON).

```python
json.dumps(my_object, ensure_ascii=False)
```
