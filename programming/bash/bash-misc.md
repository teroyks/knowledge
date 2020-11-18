# Miscellaneous Bash Recipes

Probably not very useful, saved here for future reference & inspiration.

## Move And Rename Files

When starting with a directory structure like this:

```txt
main/
├── Output
├── Theme A (1)
│   ├── FileA.jpg
│   ├── FileA.pdf
│   └── FileA.txt
├── Theme B (2)
│   ├── FileB.jpg
│   └── FileB.pdf
└── Theme C (3)
    ├── FileC.pdf
    └── FileC.txt
```

Find all PDF files and copy to output. Rename them so that the number in the directory name is prepended to the file name, ie: `01 - FileA.pdf` etc.

```shell
while read F; do FILE=$(basename "$F"); NR=$(printf "%02d" "$(echo "$F" | sed "s/.*(\(.*\)).*/\1/")"); cp -v "$F" "./Output/$NR - $FILE"; done < <(find . -iname "*.pdf")
```

For a more readable version, see my [Fish shell version](../fish/fish-misc.md#Move-And-Rename-Files).
