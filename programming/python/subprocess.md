# Working with Subprocesses

Run a system command:

```python
import subprocess

# Represent the command ls -a /var as a dictionary to use in subprocess.Popen
the_command = ["ls", "-a", "/var"J

# Send the stout and stderr of the process to variables we can use in the script.
stout, stderr = subprocess.Popen(the_command, universal_newlines=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE).communicate()

# View the output of each variable.
print ("stdout: %s" % stdout)
print ("stderr: %s" % stderr)
```

- `universal_newlines`: work with text instead of bytes
- `communicate()`: tell the module to interact with the process (waits for the output)
