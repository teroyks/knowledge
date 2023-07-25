# Rust Strings

## Character Count

- `String::len` counts only single-byte characters correctly.
- `str.chars.count` does not work consistently either (e.g. `é` vs. `é`)

Graphemes counting works (but is O(n)):

```rust
use unicode_segmentation::UnicodeSegmentation; // 1.6.0

fn main() {
    println!("{}", "é".graphemes(true).count()); // 1
    println!("{}", "é".graphemes(true).count()); // 1
}
```
