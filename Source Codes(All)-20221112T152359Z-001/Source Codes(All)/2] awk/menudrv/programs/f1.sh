ch=1
while [ $ch -ne 0 ]; do
echo 1.fact
echo 2.prime
echo 3.palindrom
echo 4.greatest of three
echo 5.string palindrom
echo enter your choice
read ch 
case $ch in
1)
 echo enter the no
 read num1
 echo $num1 >>db.txt
 awk -f fact1.awk db.txt
 rm db.txt
;;
2) echo enterr the no
 read num1
 echo $num1 >>db36.txt
 awk -f pri.awk db36.txt
 rm db36.txt
;;
3)echo enter the no
 read num1
 echo $num1 >>db36.txt
 awk -f palno.awk db36.txt
 rm db36.txt
;;
4)echo enter the no
 read num1
 read num2
 read num3
 echo $num1 $num2 $num3 >>db36.txt
 awk -f gre.awk db36.txt
 rm db36.txt
;;
5)
 echo enter the string
 read str
 echo $str >>db36.txt 
 awk -f strpali.awk db36.txt
 rm db36.txt
;;
 0)
    echo thanku
    esac
    read
    done


