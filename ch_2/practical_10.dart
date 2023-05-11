/*
Write a Dart program to find a user given
number is even or odd.
*/

import 'dart:io';

void main()
{
  print("Enter The Number :");
  int n=int.parse(stdin.readLineSync()!);
  
  if(n % 2 == 0)
  {
    print("$n is Even Number");
  }
  else
  {
    print("$n is Odd Number");
  }
}
