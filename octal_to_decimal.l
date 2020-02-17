%{ 
    #include<stdio.h>
   void octtodeci(int);
%}

%%
[0-7]+ {octtodeci(atoi(yytext));}
%%

int main()
{
printf("\n enter the octal number");
yylex();
}

void octtodeci(int num)
{
 	int sum=0;
	int r=0;
	int i=0;

while(num!=0)
{
 	r=num%10;
	sum=sum+r*po(8,i);
	i++;
	num=num/10;
}
printf("\n the decimal equivalent is %d",sum);
}

int po(int a,int m)
{
 int j=0;
 int k=1;
	for(j=0;j<m;j++)
	{
		k=k*a;
	}

return k;
}    
int yywrap()
{
return 1;
}
