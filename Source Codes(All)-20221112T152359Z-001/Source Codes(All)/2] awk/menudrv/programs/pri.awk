BEGIN{

}
{

 n2=$1
 flag=0
 for(i=2;i<=n2/2;i++)
 if(n2%i== 0)
  {
   flag=1;
   break;
 }
if(flag==1)
printf("no is not  prime");
else
printf("no is prime");
}
END{
}
  
