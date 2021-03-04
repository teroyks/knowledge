#!/usr/bin/env bash
#
# Alfred script to open knowledge base articles
#
# Uses the JSON format
#
# ⏎   opens the page in the default browser
# ⌘C  copies the file path to the clipboard
#

DOC_ROOT="~/Documents/knowledge"

FILES=$(/usr/local/bin/fd --base-directory ~/Documents/knowledge -tf)
DIRS=$(/usr/local/bin/fd --base-directory ~/Documents/knowledge -td)

echo '{ "items": ['

# main 
cat << EOF
  {
    "uid": "knowledge",
    "title": "Knowledge base",
    "arg": "",
    "autocomplete": "",
    "match": "/",
    "text": {
      "copy": "$DOC_ROOT",
      "largetype": "$DOC_ROOT"
    },
    "icon": { "type": "fileicon", "path": "~/Desktop" },
    "quicklookurl": "$DOC_ROOT"
  },
EOF

# directories
while read -r DIR
do
  URL="tree/main/$DIR"
  DIR_PATH="~/Documents/knowledge/$DIR"
  WORDS=$(echo $DIR | sed -e 's:/: :g') # match any words in path
  cat << EOF
  {
    "uid": "$DIR",
    "title": "$DIR",
    "arg": "$URL",
    "autocomplete": "$URL",
    "match": "$WORDS",
    "text": {
      "copy": "$DIR_PATH",
      "largetype": "$DIR_PATH"
    },
    "icon": { "type": "fileicon", "path": "~/Documents" },
    "quicklookurl": "$DIR_PATH"
  },
EOF
done < <(echo "$DIRS")

# files
while read -r FILE
do
  URL="blob/main/$FILE"
  FILE_PATH="~/Documents/knowledge/$FILE"
  WORDS=$(echo $FILE | sed -e 's:/: :g') # match any words in path
  cat << EOF
  {
    "uid" :"$FILE",
    "title": "$FILE",
    "arg": "$URL",
    "autocomplete": "$URL",
    "match": "$WORDS",
    "text": {
      "copy": "$FILE_PATH",
      "largetype": "$FILE_PATH"
    },
    "icon": { "type": "fileicon", "path": "$FILE_PATH" },
    "quicklookurl": "$FILE_PATH"
  },
EOF
done < <(echo "$FILES")

# not shown; prevents a dangling comma error
echo '  {}'

echo ']}'
