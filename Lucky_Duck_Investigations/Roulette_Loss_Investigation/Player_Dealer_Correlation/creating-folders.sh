
## Creating files and folders

mkdir Lucky_Duck_Investigations

# Creating company's folder

cd Lucky_Duck_Investigations

# Creating a subfolder for a specific investigation

mkdir Roulette_Loss_Investigation 

cd Roulette_Loss_Investigation

# Creating Individual analysis folder

mkdir Player_Analysis
mkdir Dealer_Analysis
mkdir Player_Dealer_Correlation

# Creating Notes file in every directory created above

cd Player_Analysis
touch Notes_Player_Analysis
cd ../
cd Dealer_Analysis
touch Notes_Dealer_Analysis
cd ../
cd Player_Dealer_Correlation
touch Notes_Player_Dealer_Correlation


# Moving back to the Luky_Dealer_Investigation directory
cd ../../

# Setting up evidence files
# wget "https://tinyurl.com/3-HW-setup-evidence" && chmod +x ./3-HW-setup-evidence && ./3-HW-setup-evidence

mv 