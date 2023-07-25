# Python Debugging

Stack trace:

```python
import traceback

def traced_function():
	...
	print(traceback.extract_stack())
```
