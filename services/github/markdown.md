# GitHub-flavored Markdown

Things that work for in Markdown files in GitHub.

## Code Blocks

Syntax highlighting in a code block:

````markdown
```language
code here
```
````

[Linguist language definitions](https://github.com/github/linguist/blob/master/lib/linguist/languages.yml) are supported, e.g.

- diff
- dockerfile
- fish – fish shell script
- markdown
- shell – bash, zsh, etc.
- shellsession – interactive shell commands
- text – plain text

## Images

```markdown
![Alt text](image.png)
```

GitHub unfortunately stretches images by default to full width, and their Markdown does not support setting the size, so the only option (that I know of) is to use HTML:

```html
<img src="pic.jpg" width="500" height="350">
```

## Links

Link to a heading on a page with `#`.  
(Replace spaces with dashes; heading reference is case sensitive):

```markdown
[Link to code blocks](markdown.md#Code-Blocks)
```
