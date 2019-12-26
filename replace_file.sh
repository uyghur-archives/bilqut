while read line
do
  selected_file=$(grep $line $2)
  #cp -p $selected_file ./selected/$target_file
  cp -p ./selected/$line $selected_file 
done < $1
