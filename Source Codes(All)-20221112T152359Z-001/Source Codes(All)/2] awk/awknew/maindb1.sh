ch=1

while [ $ch -ne 0 ]; do
echo MENU
echo 1.Insert records
echo 2.Display the Records
echo 3.Search a record
echo 4.Delete a record
echo 5.Modify a Record
echo Enter your choice :
read ch
case $ch in
1)echo "Enter the number of records you want to enter : "
read n
for ((i=0;i<n;i++))
do
echo "Enter contents of the student" 
echo "Enter the name : "
read name
echo "Enter the roll no : "
read roll
echo "Enter the marks for first subject : "
read sub1
echo "Enter the marks for second subject : "
read sub2
echo $name $roll $sub1 $sub2 $key >> data1.txt
done
;;
2)echo "The records are"
awk -f avg.awk data1.txt
;;
3)
awk -f search1.awk data1.txt
;;
4)
awk -f delete1.awk data1.txt
;;
5)
awk -f modify1.awk data1.txt
;;
0)echo "thankyou"
esac
read
done
