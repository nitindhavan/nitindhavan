***************************************************************
Name : 
BATCH : T1
ROLL NO : 
TITLE:fork(b): Program where parent process Counts number of vowels in the given
sentence
**************************************************************
#include<stdio.h>
#include<string.h>
#include<unistd.h>
#include<stdlib.h>
int main()
{
	pid_t pid;
	char a[50];
	int len,count=0,i,string;
	printf("Enter The String:");
	scanf("%[^\n]s",a);
	len=strlen(a);
	pid=fork();
	if(pid>0)
{
	for(i=0;i<len;i++)
{
	if(a[i]=='a'||a[i]=='e'||a[i]=='i'||a[i]=='o'||a[i]=='u'||a[i]=='A'||a[i]=='E'||a[i]=='I'||a[i]=='O'||a[i]=='U')
{
	count++;
}
}
printf("\nNo of vowels:%d",count);
printf("\n\n");
execlp("/bin/date","/user/date",NULL);
}
else
{
	wait();
	for(i=0;i<len;i++)
{
	if(a[i]==32&a[i-1]!=32)
{
	count++;
}
}
printf("\n No of word:%d",count+1);
}
return 0;
}
