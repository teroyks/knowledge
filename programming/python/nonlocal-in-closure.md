# Using `nonlocal` Inside a Closure

```python
import time

def make_timer():
    """Return function that gives time since it was last called."""
    last_called = None # Never
    def elapsed():
        nonlocal last_called
        now = time.time()
        if last_called is None:
            last_called = now
            return None
        result = now - last_called
        last_called = now
        return result
    return elapsed

tmr = make_timer()
tmr() # None
tmr() # 1.6067969799041748
tmr() # 2.151050090789795
tmr() # 2.5112199783325195
```
