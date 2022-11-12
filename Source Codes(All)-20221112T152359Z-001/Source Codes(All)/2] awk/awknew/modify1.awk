BEGIN{
        i=0
        flag=0
        printf("\nEnter the ROLL NO of record you want to MODIFY : ");
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
                     printf("\n Record found");
			printf("\n Enter new data:");
			printf("\n Enter NAME:");
			getline newname<"/dev/tty"
			printf("\n ENter Roll no:");
			getline newrollno<"/dev/tty"
			printf("\n Enter Sub1 marks:");
			getline newsub1<"/dev/tty"
			printf("\n Enter Sub2 marks");
			getline newsub2<"/dev/tty"
                        printf("\n YOUR NEW DATA IS:%s   %d    %d   %d ",newname,newrollno,newsub1,newsub2);
			name[j]=newname;
			roll[j]=newrollno;
			sub1[j]=newsub1;
			sub2[j]=newsub2;
			flag=1;
	           printf("\n Record modified successfully");
                 }   
         }
	if(flag==1)
        {	
               for(j=0;j<i;j++)
		{
			print  name[j]"   " roll[j]"   " sub1[j]"   " sub2[j]>>"temp.txt"
                       
                }
     
             {
                system("mv -f temp.txt data1.txt")
                system("rm -f temp.txt")
             }
        }
}

