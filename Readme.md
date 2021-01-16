
# Terminal Command Basics in Linux (Ubuntu)

  `mv`
 ## Moving a file to a current directory

- mv `path to the current directory and file` . 
Note that the '.' itself 
```
mv /folderA/folderB/folderC/filename_to_be_copied.txt 
```

Moving a file from one directory to another

```
mv /folderA/folderB/folderC/filename_to_be_copied.txt  /folderA/folderB
```

Note that if I type `cd /folderB/folderC/' It will take me directly to the desired folderC<br>
Otherwise I will have to first do cd folderB ls and then cd folderC

`grep`
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

`sed`
## Substituting text inside the files with sed
The main command is `sed`

- sed s/`Word to be replaced`/`Word to replace with`

s means substitute
The word to be replaced comes first and then the word that you are replacing with

For instance in order to replace the word x with y in file example.txt I will have to type

```
cat example.txt | sed s/x/y/

```
`awk`
## Extracting Text (e-g, ip address) from a single file with awk

For example a log file can contain important information - an exampe of one of the lines in the log file is below

> 109.169.248.247 - - [12/Dec/2015:18:25:11] ACCESS_DENIED JaneDoe index.php HTTP/1.1 200 4494

Here I can use awk to extract date and username by using the following command

```
awk '{print $4, $6}' name_of_thefile_containing_loginfo
```
Above the numbers represent the 4th and the 6th field which in this example are the date and the username <br>
The dields are printed in order as specified in the command. For example if I list $6 before $4 then the username will get printed first
Note that the above command will only display the extracted text into the terminal and if I want to save the information into a new file then:

```
awk '{print $4, $6}' name_of_thefile_containing_loginfo > name_of_newfile
```

- We can also use other parameters as separaters for example , in the csv files

```
awk -F, '{print $2}' file_containing_logs > newfile
```
Here -F is an option for field separation -here I am instructing to identify fields based on the separation by commas <br>
Similarly for separation by space 


`nano`
## Using the file editor nano
