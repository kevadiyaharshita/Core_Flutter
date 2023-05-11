/*
Write a Dart program to generates
multiplication
tables between n1 and n2 provided values.
*/

import 'Dart:io';

void main()
{

  print("Enter First Number :");
  int n1 = int.parse(stdin.readLineSync()!);

  print("Enter Second Number :");
  int n2= int.parse(stdin.readLineSync()!);

  if(n1>n2)
  {
    int swap=n1;
    n1=n2;
    n2=swap;
  }

  for(int i=n1 ; i<=n2; i++)
  {
    print("Multiplication table of $i :");
    for(int j=1;j<=10;j++)
    {
      print("$i * $j = ${i*j}");
    }
    
  }

}