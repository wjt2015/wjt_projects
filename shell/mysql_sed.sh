#!/bin/bash
dir=/home/jintaowang/wjt_2018/soft/mysql/mysql-5.6.40
##-O2
MakefileArr=( $(grep -rl '\-O' ${dir}) )

sed -i 's/-O1/-g3 -ggdb3/g' ${MakefileArr[*]}
sed -i 's/-O2/-g3 -ggdb3/g' ${MakefileArr[*]}
sed -i 's/-O3/-g3 -ggdb3/g' ${MakefileArr[*]}

echo "MakefileArr=${MakefileArr[*]}"

echo "grep-------"
grep -rn '\-O2' ${MakefileArr[*]} --color
