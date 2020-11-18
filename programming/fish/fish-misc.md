# Miscellaneous Fish Recipes

Probably not very useful, saved here for future reference & inspiration.

## Move And Rename Files

This is a more readable version of the same thing [originally written in Bash](../bash/bash-misc.md#Move-And-Rename-Files).

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

```fish
for f in (find . -iname "*.pdf")
    set file (basename $f)
    set number (string match -r "\((.*)\)" $f)[2]
    set number (printf "%02d" $number)
    cp -v $f "./Output/$number - $file"
end
```
