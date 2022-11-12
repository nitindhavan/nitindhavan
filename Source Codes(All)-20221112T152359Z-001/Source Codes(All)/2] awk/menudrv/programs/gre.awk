BEGIN{

}
{

n1=$1
n2=$2
n3=$3
if(n1>n2 && n1>n3)
printf("%d is greatest",n1);
else if(n2>n1 && n2>n3)
printf("%d is greatest",n2);
else if(n3>n1 && n3>n2)
printf("%d is greatst",n3);
else
printf("all are equal");
}

 END{
}
