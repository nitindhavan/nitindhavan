BEGIN{
	i=0
	flag=0
	printf("\nEnter the roll no of record you want to search : ");
	getline key<"/dev/tty"
}
{
 	if(1<$0)
        {
                rec[i]=$0
                name[i]=$1
                roll[i]=$2
                sub1[i]=$3
                sub2[i]=$4
	}
	i++
}
END{
	for(j=0;j<i;j++)
	{
		if(roll[j]==key)
		{	
	 	printf("\nRecord found"); 
        	 printf("\n\t%s",name[j]);
                printf("\t%d",roll[j]);
                printf("\t%d",sub1[j]);
                printf("\t%d",sub2[j]);

			flag=1
		}
	}
	if(flag==0)
		printf("\nRecord is not found");
}
