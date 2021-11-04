
#!/bin/bash

# Provide an argument, and this script will open the bash file in emacs that is named that

# It will create a new file if one does not exist

if [ $# -ne 1  ]; then
    echo Please provide 1 argument, which will be the name of the bash script
else
    filename=/usr/local/bin/personalBashScripts/$1.sh
    if [ ! -f $filename ]; then
	touch $filename
	echo "#!/bin/bash" >> $filename
    fi
    emacs $filename
fi
