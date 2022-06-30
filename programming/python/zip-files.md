# Working With Zip Files

## Add Files to an Archive

[Pandas](pandas.md) method for writing (multiple) files into a single archive:

```python
df.to_csv(
    "collection_name.zip",
    compression=dict(method="zip", archive_name="file_name.csv"),
    mode="a"
)
```
