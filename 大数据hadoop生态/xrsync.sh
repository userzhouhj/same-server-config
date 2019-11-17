#!/bin/bash
#获取输入参数个数，如果没有输入参数则退出
pcount=$#
if((pcount==0)); then
echo no args;
exit;
fi

#获取文件名称
p1=$1
fname=`basename $p1`
echo fname=$fname

#获取文件上层路径
pdir=`cd -P $(dirname $p1); pwd`
echo pdir=$pdir

#获取当前用户
user=`whoami`
#循环分发
for((host=103; host<105; host++)); do
        echo ------------------- hadoop$host --------------
        rsync -rvl $pdir/$fname $user@hadoop$host:$pdir
done
