/*
*********************************************************************
NAME: 
ROLL NO:		
BATCH : T1
CLASS: TEIT
Title: Simulation of Memory allocation algorithms ( First Fit, Best Fit , Next Fit )
*********************************************************************
*/
#include<stdio.h>
#define max 10
typedef struct holes
{
   int size;
   int filled;
   int page;
   int sizecum;
}holes;
typedef struct pages
{
   int name;
   int size;
}pages;
void firstFit(holes hole[max],int nh,pages page[max],int np)
{
   int i,j,fl;
   for(i=0;i<np;i++)
   {
      fl=0;
      for(j=0;j<nh;j++)
      {
         if(hole[j].filled==0&&hole[j].size>=page[i].size)
         {
            hole[j].page=page[i].name;
            hole[j].filled=1;
            hole[j].sizecum=page[i].size;
            fl=1;
            break;
         }
      }
      if(fl==0)
         printf("\nWe couldnot place the page %d in any of the holes",page[i].name);
   }
   printf("\nNo.\tSize\tPage\tSize consumed");
   for(i=0;i<nh;i++)
   {
      printf("\n%d\t%d\t%d\t%d",i+1,hole[i].size,hole[i].page,hole[i].sizecum);
   }
}
void bestFit(holes hole[max],int nh,pages page[max],int np)
{
   int i,j,k,min,diff[max];
   for(i=0;i<np;i++)
   {
      for(j=0;j<nh;j++)
         diff[j]=-1;
      k=-1;
      for(j=0;j<nh;j++)
      {
         if(hole[j].filled==0&&hole[j].size>=page[i].size)
         {
            diff[j]=hole[j].size-page[i].size;
         }
      }
      min=1000;
      for(j=0;j<nh;j++)
      {
         if(diff[j]>=0&&diff[j]<min)
         {
            min=diff[j];
            k=j;
         }
      }
      if(k!=-1)
      {
         hole[k].page=page[i].name;
         hole[k].filled=1;
         hole[k].sizecum=page[i].size;
      }
      else
         printf("\nWe couldnot place the page %d in any of the holes",page[i].name);
   }
   printf("No.\tSize\tPage\tSize consumed");
   for(i=0;i<nh;i++)
   {
      printf("\n%d\t%d\t%d\t%d",i+1,hole[i].size,hole[i].page,hole[i].sizecum);
   }
}
void worstFit(holes hole[max],int nh,pages page[max],int np)
{
   int i,j,k,maximum,diff[max];
   for(i=0;i<np;i++)
   {
      for(j=0;j<nh;j++)
         diff[j]=-1;
      k=-1;
      for(j=0;j<nh;j++)
      {
         if(hole[j].filled==0&&hole[j].size>=page[i].size)
         {
            diff[j]=hole[j].size-page[i].size;
         }
      }
      maximum=0;
      for(j=0;j<nh;j++)
      {
         if(diff[j]>=0&&diff[j]>maximum)
         {
            maximum=diff[j];
            k=j;
         }
      }
      if(k!=-1)
      {
         hole[k].page=page[i].name;
		 hole[k].filled=1;
		 hole[k].sizecum=page[i].size;
	  }
	  else
		 printf("\nWe couldnot place the page %d in any of the holes",page[i].name);
   }
   printf("No.\tSize\tPage\tSize consumed");
   for(i=0;i<nh;i++)
   {
	  printf("\n%d\t%d\t%d\t%d",i+1,hole[i].size,hole[i].page,hole[i].sizecum);
   }
}



int main()
{
   holes hole[max],h[max];
   pages page[max],p[max];
   int ch,nh,np,i;
   do
   {
	  printf("\n1:Accept pages and holes");
	  printf("\n2:First fit");
	  printf("\n3:Best fit");
	  printf("\n4:Worst fit");
	  printf("\n5:Exit");
	  printf("\nEnter your choice");
	  scanf("%d",&ch);
	  switch(ch)
	  {
		 case 1:printf("Enter the no. of holes");
				scanf("%d",&nh);
				for(i=0;i<nh;i++)
				{
				   printf("\nEnter the size of the hole");
				   scanf("%d",&hole[i].size);
				   hole[i].filled=0;
				   hole[i].page=0;
				   hole[i].sizecum=0;
				}
				printf("\nEnter the no. of pages");
				scanf("%d",&np);
				for(i=0;i<np;i++)
				{
				   printf("\nEnter the name of the page");
				   scanf("%d",&page[i].name);
				   printf("\nEnter the size of the page");
				   scanf("%d",&page[i].size);
				}

				break;
		 case 2:	for(i=0;i<nh;i++)
				{
				   hole[i].filled=0;
				   hole[i].page=0;
				   hole[i].sizecum=0;
				}
                               firstFit(hole,nh,page,np);
				break;
		 case 3:       for(i=0;i<nh;i++)
				{
				   hole[i].filled=0;
				   hole[i].page=0;
				   hole[i].sizecum=0;
				}
                               bestFit(hole,nh,page,np);
				break;
		 case 4:        for(i=0;i<nh;i++)
				{
				   hole[i].filled=0;
				   hole[i].page=0;
				   hole[i].sizecum=0;
				}    
                        worstFit(hole,nh,page,np);
				break;
		 default:printf("\nWrong choice");
	  }
   }while(ch!=5);
}
