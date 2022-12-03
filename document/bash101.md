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

### **File tree**

You can use find to find things or view a file tree.

```bash
find

# You can use find <folder_name> to display the tree of a different folder.

find different_directory/
find client/
```

There's a -name flag in there. You can use it to search for something with find `-name <filename>`

```bash
# find -name file
find -name index.js

find components/ -name Button.js
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
