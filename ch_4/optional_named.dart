//import 'dart:io';

void sum(int a,int b,{int c=0,int d=0})
{
  print("The Sum of :$a,$b,$c,$d is: ${a+b+c+d}");
}

void main()
{
  sum(10,20,d:30,c:40);
}
