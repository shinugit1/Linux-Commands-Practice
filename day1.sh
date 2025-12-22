


pwd #shows present working directory
ls -l --> #lists all the files with their details , -i stands for long listing format
ls -a --> #lists all the hidden files, -a > all
-rwxr-xr-- 1 john devops 1234 Jan 10 script.sh

mkdir myfolder --> #make a mydir directory
cd myfolder-->  #change to the director mydir

 touch --> Creates a new empty file if it doesn’t exist.
          If file exists → updates its last modified timestamp.
    e.g   touch filename
          touch test.txt       # creates test.txt
          touch a b c          # creates 3 files
 cp --> Copies files from one place to another.
      cp source destination
      cp file1.txt file2.txt       # copy full contents of file1 to now newly created file2
      cp file.txt /home/user/      # copy to another folder
      cp -r folder1 folder2        # copy a folder (r = recursive) -r → required for copying directories.
 mv -->Moves file from one location to another.
       Also used for renaming.
       mv source destination
       mv old.txt new.txt           # rename file
       mv file.txt /home/user/      # move file
       mv folder1 folder2           # move/rename folder
 rm --> Removes (deletes) files.
        Permanently deletes — not in recycle bin.
        rm file.txt                  # remove file
        rm -r folder/                # remove directory
        rm -rf folder/               # force delete folder (careful!)
Options:
      -r → delete folders recursively
      -f → force delete (no confirmation)
      rm -rf / → deletes the entire system (never run this).
      rm -rf * → deletes everything in current folder.
      
 cat -->Shows the content of a file on the terminal.
        Can combine multiple files.
        cat file.txt          # display file
        cat file1 file2       # display both files together
        cat > file.txt        # overwrite file with new content
        cat >> file.txt       # append new content
  
  echo -->  "Prints" text on the screen.
            Writes text into files.
            echo "Hello"              # prints Hello
            echo "Hello" > file.txt   # write (overwrites file)
            echo "Hello" >> file.txt  # append to file
   nano-->Opens a file in an easy, beginner-friendly "editor".
          Shows shortcuts at the bottom.
          nano file.txt
      Important shortcuts:
      Ctrl + O → save
      Ctrl + X → exit
      Ctrl + K → cut line
      Ctrl + U → paste line
   
   vi / vim-->Opens files in a powerful, modal text editor.
               Preferred by Linux/DevOps engineers on servers.
              vim file.txt
              Modes (important):
          Insert mode → for typing
          Normal mode → for commands
          Command mode → for saving, quitting
Essential commands:
Action	Command
Insert text	i
Save file	:w
Quit	:q
Save & quit	:wq
Quit without saving	:q!
Go to Normal mode	Esc 

Symbol	Action	    Deletes old content?
>	      Overwrite	  ❌ Yes, old content removed
>>	    Append	    ✔ No, adds at bottom
      
      rwx --> read write execute, these are the permissions given to the users.
rwx = 7  
rw- = 6  
r-x = 5  
r-- = 4 
Permission	Symbol	Value
Read	        r      	4
Write	        w	      2
Execute	      x	      1

To get a final number → add them.

Example:
r + w + x = 4 + 2 + 1 = 7
r + - + x = 4 + 0 + 1 = 5

Owner   = rwx  7
Group   = r-x  5
Others  = r-x  5

chmod --> chmod controls what actions (read, write, execute) different users can do on a file or folder.
      r = 4
      w = 2
      x = 1
We add them to get permission numbers.
chmod 755 file.sh
Meaning:
Who	          Permission	    rwx form
User (owner)	7 = rwx      	rwx
Group	        5 = r-x	      r-x
Others	      5 = r-x	      r-x

Using SYMBOLS (alternative method)
Examples:
Add execute permission:
chmod +x file.sh

Remove write from others:
chmod o-w file.txt

Give group read and write:
chmod g+rw file.txt

Remove execute from user:
chmod u-x script.sh

chown --> chown changes/controls who owns the file or folder.
        chown user file
    eg chown ubuntu file.txt
     Change owner + group
      chown user:group file
      Example:

      chown shivani:devops project.log
      Owner = shivani
      Group = devops

      chown -R user:group folder/    this Change for entire folder (recursive)

Option	        Meaning	              Used with	Purpose
-r	        recursive	rm	            remove directory + all contents
-R	        recursive	cp, chmod,       apply operation to directory + all contents
            chown, mv, etc.	
            
    SUID --> Runs the file as the owner, not as you.
