ch=1
while [ $ch -ne 5 ]; do
echo menu
echo 1.greatest of 3 nos.
echo 2.reverse of a no.
echo 3.sum of individual digits of a no.
echo 4.print word n times
echo 5.exit

echo enter your choice
read ch
case $ch in
1)echo greatest of 3 no.
n1=$1
n2=$2
n3=$3
if [ $n1 -gt $n2 -a $n1 -gt $n3 ]
 then
 echo $n1 is greatest
elif [ $n2 -gt $n3 -a $n2 -gt $n1 ]
 then
 echo $n2 is greatest
elif [ $n3 -gt $n1 -a $n3 -gt $n2 ]
 then
 echo $n3 is greatest
 else
 echo all are equal 
fi 
;;
2)
num=$3
while [ $num -ne 0 ]
do
temp=`expr $num % 10`
rev=$rev$temp
num=`expr $num / 10`
done
echo reverse no. is: $rev
;;
3)
echo sum of individual digits of no.
num=$3
sum=0
while [ $num != 0 ]
do
rem=` expr $num % 10 `
sum=` expr $sum + $rem `
num=` expr $num / 10 `
done
echo sum of individual digits of no. $3 is $sum
;;
4)
echo print $4 $2 times
for((i=0;i<$2;i++))
do
  echo $4
done
;;
5)echo Thank you!!!
esac
read
done
