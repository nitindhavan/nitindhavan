ch=1
echo enter value 1
read a
echo enter value 2
read b
while [ $ch -ne 6 ]; do
echo menu 
echo 1. add
echo 2. subtract
echo 3. multiply
echo 4. divide
echo 5. exit

echo enter ur choice
read ch
case $ch in 
1)
 res=`expr $a + $b`
 echo $res
 ;;
2)
 res=`expr $a - $b`
 echo $res
 ;;
3)
 res=`expr $a \* $b`
 echo $res
 ;;
4)
 res=`expr $a / $b`
 echo $res
 ;; 
esac
read
done
