ch=1
while [ $ch -ne 6 ]; do
echo menu
echo 1.factorial
echo 2.greatest of 3 nos.
echo 3.prime
echo 4.palindrome no.
echo 5.palindrome string
echo 6.exit

echo enter your choice
read ch

case $ch in
1)echo enter the no. to find its factorial
read n
f=1
for((i=1;i<=n;i++))
do
f=`expr $f \* $i`
done
echo the factorial is $f 
;;
2)echo enter the 1st no. :
read n1
echo enter the 2nd no. :
read n2
echo enter the 3rd no. :
read n3
if(test $n1 -gt $n2)
   then
if(test $n1 -gt $n3)
   then
   echo greatest no. is : $n1
fi
elif(test $n2 -gt $n3)
  then 
  echo greatest no. is : $n2
  else
  echo greatest no. is : $n3
fi
;;
3)echo enter the no. :
read n
flag=0
for((i=2;i<n;i++))
do
  if(test `expr $n % $i` -eq 0)
  then
  flag=1;
  fi
done
if(test $flag -eq 0)
  then
  echo $n is a prime no.
  else
  echo $n its not a prime no.
fi
;;
4)echo enter the no. of which palindrome is to be found
  read n
  t2=$n
while true
do
  temp=`expr $n % 10`
  r=$r$temp
  n=`expr $n / 10`
  if [ $n -eq 0 ]
  then
  break
fi
done

if [ $r -ne $t2 ]
then
echo the no. is not palindrome
else
echo the no. is palindrome
fi
;;
5)echo enter the string 
  read s
  len=${#s}
  name1=$s
  while true
  do
  temp=`expr $s | cut -c $len`
  x=$x$temp
  len=`expr $len - 1`
  if [ $len -eq 0 ]
  then 
  break
  fi
done
if [ $x = $name1 ]
then
  echo "string is palindrome"
else
echo "string is not palindrome"
fi
;;
esac
read
done
