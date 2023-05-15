import 'dart:io';

int sum(int a,int b,[int c=0,int d=0]) => a+b+c+d;

void main()
{
  int a,b;

  stdout.write("Enter a:");
  a=int.parse(stdin.readLineSync()!);

  stdout.write("Enter b:");
  b=int.parse(stdin.readLineSync()!);

  print("Sum :${sum(a,b,6,8)}");
}