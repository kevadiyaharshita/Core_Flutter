/*
  Write a Dart program to perform multiplication of
  two user given numbers.
*/


import 'dart:io';
 
void main()
{
   
    print("Enter first number");
    int n1 = int.parse(stdin.readLineSync()!);
 
    print("Enter second number");
    int n2 = int.parse(stdin.readLineSync()!);

    print('Multiplication is :  ${n1*n2}');
}