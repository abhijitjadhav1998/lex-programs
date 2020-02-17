%{
#include<stdio.h>
int wr=0, lc=0, sc=0, tc=0, ch=0;
%}
%%
[\n] {lc++;wr++;}
[ ] {sc++;wr++;}
[\t] {tc++;wr++;}
. ch++;
%%
int yywrap(void)
{}
int main()
{
yylex();
printf("\nNumber of lines=%d", lc);
printf("\nNumber of spaces=%d", sc);
printf("\nNumber of tabs=%d", tc);
printf("\nNumber of other characters=%d", ch);
printf("\nNumber of words=%d", wr);
}
