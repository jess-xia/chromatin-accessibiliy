#!/bin/bash

trait=$1
folder_name=$2

for ((i=1;i<=20761;i+=5));
do 
  echo "#!/bin/bash" > "/nethome/kcni/jxia/chromatin-accessibility/Adult/${folder_name}/${trait}_${i}.sh"
  echo "Rscript /nethome/kcni/jxia/chromatin-accessibility/parallel.R ${i}" >> "/nethome/kcni/jxia/chromatin-accessibility/Adult/${folder_name}/${trait}_${i}.sh"
  echo "/nethome/kcni/jxia/chromatin-accessibility/Adult/${folder_name}/${trait}_${i}.sh" >> "/nethome/kcni/jxia/chromatin-accessibility/Adult/${folder_name}/script_list.txt" 
  chmod +x /nethome/kcni/jxia/chromatin-accessibility/Adult/${folder_name}/${trait}_${i}.sh
  echo "File ${trait}_${i}.sh generated"  
done
