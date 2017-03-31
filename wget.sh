#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
echo -e '\033[41;37m ===================== wget 下载项目开始 ====================== \033[0m'
echo 

cur_path=$PWD      # 当前目录
user=$USER    # 当前用户

cd /Users/$user

if [ ! -d './wget_files' ]; then 
mkdir 'wget_files'
cd 'wget_files'
else
cd 'wget_files'
fi

wget -r -p -np -k --restrict-file-names=nocontrol --no-check-certificate $1

save_path=$PWD

cd $cur_path

echo
echo $1' 已经下载完成 '
echo
echo '保存位置：' $save_path
echo
echo -e '\033[41;37m ===================== Power by Keystion ==================== \033[0m'
echo

exit 0
