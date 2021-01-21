



 echo $1 && grep -i $2':00:00 '$3  $1_Dealer_schedule |\
awk  '{print $1,$2,$5,$6}' >> Dealers_working_during_Losses



# grep -i '03:00:00 am'  0312_Dealer_schedule |\
# awk '{print $1,$2,$5,$6}'