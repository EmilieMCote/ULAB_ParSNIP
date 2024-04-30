#!/bin/bash

emilie_path="/global/cfs/projectdirs/desi/users/emilieco/PLASTIC_Plots/"
path_from_here="../../../emilieco/PLASTIC_Plots/"
html_name='plasticc'
echo "<html><body>" >> $html_name.html
for i in $( ls $emilie_path*lc.png)
do 
arr=(${i//\// })
echo "<figure>" >> $html_name.html
echo "<img src=\"$path_from_here${arr[-1]}\">" >> $html_name.html
echo "</figure>" >> $html_name.html
done
echo "</html></body>" >> $html_name.html
