im:
	sh ./home_dotfiles.sh Import 2>&1 /dev/null
	echo "Done importing files to the repo!"

ex:
	sh ./home_dotfiles.sh Export 2>&1 /dev/null      
	echo "Done exporting files from the repo!"

