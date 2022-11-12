BEGIN{

}
{
str=$1
l=length(str)
f1=0
for(i=0;i<l;i++)
{
 ch1=substr(str,i)
 ch2=substr(str,l)
 if( $ch1==$ch2 )
 
 f1=1;
 
 else
 break;
 l--;
 }  

if(f1==1)
printf("the str %s is  palindrom",str);
else
printf("the str %s is not  palindrom",str);
}
END{

}
