
# Find the files and write their paths in a file name

# Finding the dealer files
find -type f -iname *310_dealer* -o -iname *312_dealer* -o -iname *315_dealer*  > 03-Terminal/Lucky_Duck_Investigations/Roulette_Loss_Investigation/evidence_file_paths.txt\
&&
 
# Finding the player files
find  -type f -iname *310* -iname *player* -o -iname *312* -iname *player* \
 -o -iname *315* -iname *player* >> 03-Terminal/Lucky_Duck_Investigations/Roulette_Loss_Investigation/evidence_file_paths.txt &&
cat  03-Terminal/Lucky_Duck_Investigations/Roulette_Loss_Investigation/evidence_file_paths.txt


# using these paths write the shell scripts to move the files into the respective foldersls

# Moving the Dealer files into the playeranalysis folder - note that when copying the files the space b/w } and\ is important
cp ./03-Terminal/Dealer_Schedules_0310/Dealer_Schedules_0310/{0310_Dealer_schedule,0312_Dealer_schedule,0315_Dealer_schedule} \
./03-Terminal/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis 

#Moving Player files
cp ./03-Terminal/Roulette_Player_WinLoss_0310/Roulette_Player_WinLoss_0310/{0310_win_loss_player_data,0312_win_loss_player_data,0315_win_loss_player_data} \
./03-Terminal/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Player_Analysis

# Moving the losses file in the player dealer co-relation from the terminal3
cp ./03-Terminal/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Player_Analysis/Roulette_Losses ./03-Terminal/Lucky_Duck_Investigations/Roulette_Loss_Investigation


# Extract data from specific files and then save it into the files
grep -e -  -- 0310_win_loss_player_data 0312_win_loss_player_data 0315_win_loss_player_data > Roulette_Losses

# counting the total number of times Schmidt played
grep -i schmidt  -- 0310_win_loss_player_data 0312_win_loss_player_data 0315_win_loss_player_data | grep -c -i  schmidt

# Counting the total number of times Schmidt was playing during losses 
grep -e -  -- 0310_win_loss_player_data 0312_win_loss_player_data 0315_win_loss_player_data | grep -c -i  schmidt


cp ./03-Terminal/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis/Dealers_working_during_Losses ./03-Terminal/Lucky_Duck_Investigations/Roulette_Loss_Investigation
