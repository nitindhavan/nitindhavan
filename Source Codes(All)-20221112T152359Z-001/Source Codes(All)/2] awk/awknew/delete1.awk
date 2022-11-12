BEGIN{
        i=0
        flag=0
        printf("\nEnter the roll no of record you want to delete : ");
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
                if(roll[j]!=key)
                {
                        print rec[j] name[j] roll[j] sub1[j] sub2[j]>>"temp.txt"
                	flag=1
		}
        }
        if(flag==1)
        {
                system("mv -f temp.txt data1.txt")
              	system("rm -f temp.txt")
        }
        if(flag==0)
                printf("\nRecord is not found");
}
                                            
