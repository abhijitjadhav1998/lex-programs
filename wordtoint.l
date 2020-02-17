%{
int value=0;
%}
%%
one|ONE {value=1;}
two|TWO {value=2;}
three|THREE {value=3;}
four|FOUR {value=4;}
five|FIVE {value=5;}
six|SIX {value=6;}
seven|SEVEN {value=7;}
eight|EIGHT {value=8;}
nine|NINE {value=9;}
ten|TEN {value=10;}
[\t]* return 0;
.* {ECHO;}
\n {printf("%d\n",value);}
%%
int main()
{
yylex();
printf("%d\n",value);
return 0;
}
int yywrap()
{
return 1;
}
