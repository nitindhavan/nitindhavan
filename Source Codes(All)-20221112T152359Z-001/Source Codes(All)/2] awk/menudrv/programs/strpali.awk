BEGIN{
}
{
}END{
str=$1;
flag=0;
len=length(str);
for(i=1;i<=len;i++)
{
ch=substr(str,i,1);
ch2=substr(str,len,1);
len--;
if(ch!=ch2)
{
  flag=1;
break;
}
}
if(flag==1)
{
  printf("\n not a palidrome");
}
else
  printf("\n String is palidrome");
}
