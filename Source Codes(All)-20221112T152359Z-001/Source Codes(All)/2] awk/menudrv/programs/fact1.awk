BEGIN{

}
{
n1=$1
fact=1;
for(i=1;i<=n1;i++)
 {
    fact=fact*i;
 }
printf("factorial of no %d is %d",n1,fact)
}
END{

}
