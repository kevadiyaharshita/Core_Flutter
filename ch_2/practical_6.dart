/*
Write a Dart program to find a cube of any
number.
*/

import 'dart:io';

void main()
{
  print("Enter Any Number :");
  int n=int.parse(stdin.readLineSync()!);

  print("The Cube Of $n Is : ${n*n*n}");
}