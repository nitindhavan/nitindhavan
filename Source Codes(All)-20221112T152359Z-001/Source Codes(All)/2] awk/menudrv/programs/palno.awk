BEGIN{

}
{
n2=$1
n=n2
rm=0
r=0
while(n>0)
{
 rm=int(n%10)
 r=(r*10)+rm
 n=int(n/10)
}
printf("the reverse no is %d",r)
if(r==n2)
printf("\nthe %d is palindrom",n2)
else
printf("\nthe no %d is not palindrom",n2)
}
END{


}
