# Bash Scripting

## 🪂 HELP

```bash
help
```

## 📂 DIRECTORY AND NAVIGATION

What you see in the terminal below is a folder (or directory)

```bash
pwd
```

Type ls into the terminal to see what's in this folder.`ls` stands for "list".

```bash
ls
```

That's a lot of folders. You can add a flag to a command to use it different ways like this: `ls <flag>`.

```bash

ls -l

# ls --help

# -a, --all
# -d, --directory
# -r, --reverse
# -R, --recursive
# -s, --size
# -S --sort=WORD [none, size, time, version. extension]
# -t list entries in directory order
# -U
# -v
# -x list entries by lines instead of by columns
# -X sort alphabetically by entry extension

```

You can use `cd <folder_name>` to go into a folder.

```bash
cd directory_name
```

You used cd .. to go back a folder earlier.

```bash
cd .
cd ..
cd ../..
```

### **File Tree | `find`**

You can use find to find things or view a file tree.It lists every folder and files recursively.

```bash
find

# You can use find <folder_name> to display the tree of a different folder.

find different_directory/
find client/
find directory1 directory2 directory3 directory4
```

**Filters `-type`**

Here, the filter is -type. You guessed it, -type f selects files, and -type d selects directories.

```bash
# Select Files
find -type f

# Select Directory
find -type d
```

**Filters `-name`**

There's a -name flag in there. You can use it to search for something with find `-name <filename>`

```bash
# find -name file
find -name filename.extension
find -name index.js

# case insensitive
find -iname index.js

find components/ -name Button.js

# Pattern | regular expression
find -name "*.js"
find -iname "*.Md"
```

**Combining Filters [`-and`,`-or`,`-not`, regular expression]**

```bash
find -name "*.js" -type f

# -or | -o
find -name "*.js" -or -name "file3.md" -type f

# -and | -a
find -name "*.js" -or -name "*.css" -and -type f

# -not | !
find -not -name "*.js" -type f

# regular extension
find \( -name "*.js" -type f \) -or -type d
# note: you have to escape the brackets.
```

**Actions [`-delete`, `-exec`, `-print`]**

```bash
# -delete
find -name "*.c" -type f -delete

# -print
find -type f -print

# Find all file and remove from hdd
find . -type f -iname "*txt" -exec rm {} \;

# Find all file and move to other folder
find . -type f -exec mv {} folder_dir \;

# Find all file and copy to other folder
find . -type f -exec cp {} folder_dir \;

# Find a file that contains a string of 'Some String'.
find . type f -exec grep 'Some String' {} \;
# Show only file name
find . -type f -exec grep 'music' -il {} \;

```

**More Example with Time [`mtime`, `newer`, `size`]**

```bash
# Any file created within 24 hours
find . -type f -mtime -1

# Any file before last 24 horus
find . -type f -mtime +1

find . -type f -mtime +1  -a -mtime -10

# All the file is newer than a specific file
find . -type f -newer file.js

# Any file that bigger than / smaller size
find . -type f -size -1M
find . -type f -size +1M
```

**Pipe `find` command with `ls` or `wc` command**

```bash
find . -type f | ls -l

find . -type f | wc -l
```

## 📐 MODIFYING DIRECTORY AND FILES

### **Directory**

You can make a new folder with `mkdir <folder_name>`. `mkdir` stands for "make directory".

```bash
mkdir directory_name

mkdir exiting_dir/new_directory_name
mkdir client/src
```

You can use `rmdir <directory_name>` to remove a folder. `rmdir` stands for "remove directory".

```bash
rmdir directory_name
rmdir client

# That will remove the folder and everything in it.
rm -r directory_name/
rmdir client/
```

### **Files**

You can use `touch <filename>` to create a new file

```bash
# touch filename.extension
touch index.js
```

You can copy a file with `cp <file> <destination>`. cp stands for "copy".

```bash
# cp file destination
cp image.jpg images/
```

You can remove a file with `rm <filename>`.

```bash
# rm file
rm image.jpg
```

You can rename them with mv like this: `mv <filename> <new_filename>`. mv stands for "move", it can rename or move something.

```bash
# mv existing_filename new_filename
mv image.jpg profile.jpg
```

You can move them with mv like this: `mv <filename> <new_filename>`. mv stands for "move", it can rename or move something.

```bash
# mv filename destination
mv image.jpg assets/images/
```

## 📋 VIEW FILES

You can see what's in a file with `<filename>`.

```bash
more file.txt
```

```bash
cat file.txt
```

## 📝 WRITE FILES

You can print to a file instead of the terminal with `echo text >> file`

```bash
echo hello bash >> README.md
```
