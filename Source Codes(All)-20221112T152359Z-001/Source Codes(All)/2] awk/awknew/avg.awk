BEGIN{
	i=0
}
{
	if(1<$0)
	{
		rec[i]=$0
		name[i]=$1
		roll[i]=$2
		sub1[i]=$3
		sub2[i]=$4
		avg[i]=(sub1[i]+sub2[i])/2
	}
	i++
}
END{
	printf("\n\tName\tRollNO\tSub1\tSub2\tAvg");
	for(j=0;j<i;j++)
	{
		printf("\n\t%s",name[j]);
		printf("\t%d",roll[j]);
		printf("\t%d",sub1[j]);
		printf("\t%d",sub2[j]);
		printf("\t%d",avg[j]);
	}
	printf("\n");
	for(j=0;j<i;j++)
        {
                if(avg[j]>=60 && avg[j]<66)
                {
                        first=avg[j];
                }
        }
        if(first>=60 && first<66)
        {
                printf("\nThe first class students are : ");
                for(j=0;j<i;j++)
                {
                        if(avg[j]>=60 && avg[j]<66)
                        {
                                printf("\nName: %s",name[j]);
                                printf("\nRollNo: %d",roll[j]);
                                printf("\nAverage Marks: %d",avg[j]);
                        }
                }
        }
        printf("\n");
        for(j=0;j<i;j++)
        {
                if(avg[j]>=50 && avg[j]<60)
                {
                        sec=avg[j];
                }
        }
        if(sec>=50 && sec<60)
        {
                printf("\nThe Second class students are : ");
                for(j=0;j<i;j++)
                {
                        if(avg[j]>=50 && avg[j]<60)
                        {
                                printf("\nName: %s",name[j]);
                                printf("\nRollNo: %d",roll[j]);
                                printf("\nAverage Marks: %d",avg[j]);
                        }
                }
        }
        printf("\n");
        for(j=0;j<i;j++)
        {
                if(avg[j]>=66)
		{
                        dist=avg[j];
                }
        }
        if(dist>=66)
        {
                printf("\nThe Distinction students are : ");
                for(j=0;j<i;j++)
                {
                        if(avg[j]>=66)
                        {
                                printf("\nName: %s",name[j]);
                                printf("\nRollNo: %d",roll[j]);
                                printf("\nAverage Marks: %d",avg[j]);
                        }
                }
        }
}
