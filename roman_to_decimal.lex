%{
int total=0;
%}
NS [\t]+
%%
I total+=1;
IV total+=4;
V total+=5;
IX total+=9;
X total+=10;
XL total+=40;
S
\n return total;
%%

int main(){
int first;
first=yylex();
printf("%d\n",first);
return 0;
}

int yywrap(){
return 1;
}
