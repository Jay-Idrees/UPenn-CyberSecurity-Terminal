
# Terminal Command Basics in Linux (Ubuntu)

## Searching with grep

The main command is `grep`.

> Searching for a word in files and then saving the names of the files that contain the specified word into a new text file

- grep -il `word` * > `name for new file` <br><br>

-il find string <br>
* all files in the current directory <br>
'>' Weiting or overwriting the new file<br>
Here -il instructs to find the string in all the files in the directory and > instructs to write a new file if does not exist or overwrite the information if the file already exists

```
grep -il example_word * > example_filename

```

> Generate info regarding the number of files in which the word was found

```
grep -il example_word * | wc -l >> example_filename
```

| is called pipe and adds another command that uses wc <br>, using pipes we can run multiple commands
wc with the specification of -l is counting the number of lines with text in the file. In this case as we expect that each of the line will be the name of the files with the word, so this count will also the count of the files in which the word/ string was found<br>
'>>' means appending

## Changing text inside the files with sed
The main command is `sed`

- sed s/`Word to be replaced`/`Word to replace with`

s means substitute
The word to be replaced comes first and then the word that you are replacing with

For instance in order to replace the word x with y in file example.txt I will have to type

```
cat example.txt | sed s/x/y/

```