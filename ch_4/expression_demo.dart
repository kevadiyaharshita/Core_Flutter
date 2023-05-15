import 'dart:io';

int sum(int a,int b) =>a+b;
void main()
{
  int a,b;

  stdout.write("Enter a:");
  a=int.parse(stdin.readLineSync()!);
  stdout.write("Enter b:");
  b=int.parse(stdin.readLineSync()!);

  int ans=sum(a,b);
  print("Sum :$ans");

}