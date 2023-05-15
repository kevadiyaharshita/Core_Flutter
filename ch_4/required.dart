import 'dart:io';

void sum({required int var1,required int var2,int var3=0,int var4=0})=>print("Sum of :$var1,$var2,$var3,$var4 is : ${var1+var2+var3+var4}");

void main()
{
  int a,b;
  
  stdout.write("Enter A:");
  a=int.parse(stdin.readLineSync()!);

  stdout.write("Enter B:");
  b=int.parse(stdin.readLineSync()!);

  sum(
    var1: a,
    var2: b,
  );
}