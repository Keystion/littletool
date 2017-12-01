# Shell 字符串转驼峰字符串


```
./toCamelCaseName.sh hello-world

# helloWorld
```


## 示例

### 1. 创建文件`toCamelCaseName.sh`
```
touch toCamelCaseName.sh
```

### 2. 更改文件读写权限
```
chmod 755 toCamelCaseName.sh
```

### 3. 编辑文件`toCamelCaseName.sh`，把以下代码添加到文件里面并保存
```
#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH



string=`echo ${1//-/ }`     # 把破择号转成空格 
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
```
> string=‘echo ${1//-/ }’ 这里面的1是文件执行时空格输入的字符串，这句代码可以改写成

```
string=$1
string=`echo ${string//-/ }`
```

### 4. 执行示例

```
./toCamelCaseName.sh hello-world

# helloWorld
```

`hello-world` => `helloWorld`

---

> 纯shell小白写的示例，欢迎指正
