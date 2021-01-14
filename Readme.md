
# Terminal Command Basics in Linux (Ubuntu)

## Searching

The main command is `grep`.

> Searching for a word in files and then saving the names of the files that contain the specified word into a new text file

- grep -il `word` * > `name for new file` <br><br>
Here -il instructs to find the string in all the files in the directory and > instructs to write a new file if does not exist or overwrite the information if the file already exists

```
grep -il example_word * > example_filename

```