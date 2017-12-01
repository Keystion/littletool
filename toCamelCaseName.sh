#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

string=`echo ${1//-/ }`   # 把破择号转成空格
string_array=($string)      # 字符串转数组  
number=${#string_array[@]}  # 数组的长度
sum=0
i=1
CamelCaseName=${string_array[0]}
while(( i <= $number ))  
do  
    let "sum++"
    let "i += 1"
    upper_name=`echo ${string_array[sum]} | perl -pe 's/.*/\u$&/'`
    CamelCaseName=$CamelCaseName$upper_name
done  
echo $CamelCaseName

exit 0
