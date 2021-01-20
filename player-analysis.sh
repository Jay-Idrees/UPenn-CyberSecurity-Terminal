
# Find the files and write their paths in a file name

# Finding the dealer files
find -type f -iname *310_dealer* -o -iname *312_dealer* -o -iname *315_dealer* > \
03-Terminal/Lucky_Duck_Investigations/Roulette_Loss_Investigation/evidence_file_paths.txt | &&
 
# Finding the player files
find  -type f -iname *310* -iname *player* -o -iname *312* -iname *player* \
 -o -iname *315* -iname *player* >> 03-Terminal/Lucky_Duck_Investigations/Roulette_Loss_Investigation/evidence_file_paths.txt



# using these paths write the shell scripts to move the files into the respective folders
# Extract data from specific files and then save it into the files

