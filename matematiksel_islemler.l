%{
  int op = 0,i;
  float a, b;
%}

dig [0-9]+|([0-9]*)"."([0-9]+)
letter [A-Za-z_]
add "+"
sub "-"
mul "*"
div "/"
pow "^"
ln \n
%%

{dig} {digi();}
{add} {op=1;}
{sub} {op=2;}
{mul} {op=3;}
{div} {op=4;}
{pow} {op=5;}
{letter}({letter}|{dig})* {metin();}
{ln} {printf("\n Son cevap :%f\n\nİşleminizi giriniz: ",a);}


%%
digi()
{
 if(op==0)

 a=atof(yytext);

 else
 {
 b=atof(yytext);

 switch(op)
 {
   case 1:a=a+b;
    break;

   case 2:a=a-b;
   break;

   case 3:a=a*b;
   break;

   case 4:a=a/b;
   break;

   case 5:for(i=a;b>1;b--)
   a=a*i;
   break;
  }
 op=0;
 }
}
metin()
{
   printf("\nMetin Girdiniz!\n");
}

main(int argv,char *argc[])
{
 printf("İşleminizi giriniz: ");
 yylex();
}

yywrap()
 {
  return 1;
 }
